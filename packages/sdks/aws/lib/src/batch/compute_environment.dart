import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_environment_args.dart';
import 'compute_environment_compute_resources.dart';
import 'compute_environment_eks_configuration.dart';
import 'compute_environment_state.dart';
import 'compute_environment_update_policy.dart';

/// Creates a AWS Batch compute environment. Compute environments contain the Amazon ECS container instances that are used to run containerized batch jobs.
///
/// For information about AWS Batch, see [What is AWS Batch?](http://docs.aws.amazon.com/batch/latest/userguide/what-is-batch.html) .
/// For information about compute environment, see [Compute Environments](http://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html) .
///
/// &gt; **Note:** To prevent a race condition during environment deletion, make sure to set `depends_on` to the related `aws.iam.RolePolicyAttachment`;
/// otherwise, the policy may be destroyed too soon and the compute environment will then get stuck in the `DELETING` state, see [Troubleshooting AWS Batch](http://docs.aws.amazon.com/batch/latest/userguide/troubleshooting.html) .
///
/// ## Example Usage
///
/// ### EC2 Type
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ec2AssumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["ec2.amazonaws.com"],
///         }],
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const ecsInstanceRole = new aws.iam.Role("ecs_instance_role", {
///     name: "ecs_instance_role",
///     assumeRolePolicy: ec2AssumeRole.then(ec2AssumeRole => ec2AssumeRole.json),
/// });
/// const ecsInstanceRoleRolePolicyAttachment = new aws.iam.RolePolicyAttachment("ecs_instance_role", {
///     role: ecsInstanceRole.name,
///     policyArn: "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role",
/// });
/// const ecsInstanceRoleInstanceProfile = new aws.iam.InstanceProfile("ecs_instance_role", {
///     name: "ecs_instance_role",
///     role: ecsInstanceRole.name,
/// });
/// const batchAssumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["batch.amazonaws.com"],
///         }],
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const awsBatchServiceRole = new aws.iam.Role("aws_batch_service_role", {
///     name: "aws_batch_service_role",
///     assumeRolePolicy: batchAssumeRole.then(batchAssumeRole => batchAssumeRole.json),
/// });
/// const awsBatchServiceRoleRolePolicyAttachment = new aws.iam.RolePolicyAttachment("aws_batch_service_role", {
///     role: awsBatchServiceRole.name,
///     policyArn: "arn:aws:iam::aws:policy/service-role/AWSBatchServiceRole",
/// });
/// const sample = new aws.ec2.SecurityGroup("sample", {
///     name: "aws_batch_compute_environment_security_group",
///     egress: [{
///         fromPort: 0,
///         toPort: 0,
///         protocol: "-1",
///         cidrBlocks: ["0.0.0.0/0"],
///     }],
/// });
/// const sampleVpc = new aws.ec2.Vpc("sample", {cidrBlock: "10.1.0.0/16"});
/// const sampleSubnet = new aws.ec2.Subnet("sample", {
///     vpcId: sampleVpc.id,
///     cidrBlock: "10.1.1.0/24",
/// });
/// const samplePlacementGroup = new aws.ec2.PlacementGroup("sample", {
///     name: "sample",
///     strategy: aws.ec2.PlacementStrategy.Cluster,
/// });
/// const sampleComputeEnvironment = new aws.batch.ComputeEnvironment("sample", {
///     name: "sample",
///     computeResources: {
///         instanceRole: ecsInstanceRoleInstanceProfile.arn,
///         instanceTypes: ["c4.large"],
///         maxVcpus: 16,
///         minVcpus: 0,
///         placementGroup: samplePlacementGroup.name,
///         securityGroupIds: [sample.id],
///         subnets: [sampleSubnet.id],
///         type: "EC2",
///     },
///     serviceRole: awsBatchServiceRole.arn,
///     type: "MANAGED",
/// }, {
///     dependsOn: [awsBatchServiceRoleRolePolicyAttachment],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ec2_assume_role = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["ec2.amazonaws.com"],
///     }],
///     "actions": ["sts:AssumeRole"],
/// }])
/// ecs_instance_role = aws.iam.Role("ecs_instance_role",
///     name="ecs_instance_role",
///     assume_role_policy=ec2_assume_role.json)
/// ecs_instance_role_role_policy_attachment = aws.iam.RolePolicyAttachment("ecs_instance_role",
///     role=ecs_instance_role.name,
///     policy_arn="arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role")
/// ecs_instance_role_instance_profile = aws.iam.InstanceProfile("ecs_instance_role",
///     name="ecs_instance_role",
///     role=ecs_instance_role.name)
/// batch_assume_role = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["batch.amazonaws.com"],
///     }],
///     "actions": ["sts:AssumeRole"],
/// }])
/// aws_batch_service_role = aws.iam.Role("aws_batch_service_role",
///     name="aws_batch_service_role",
///     assume_role_policy=batch_assume_role.json)
/// aws_batch_service_role_role_policy_attachment = aws.iam.RolePolicyAttachment("aws_batch_service_role",
///     role=aws_batch_service_role.name,
///     policy_arn="arn:aws:iam::aws:policy/service-role/AWSBatchServiceRole")
/// sample = aws.ec2.SecurityGroup("sample",
///     name="aws_batch_compute_environment_security_group",
///     egress=[{
///         "from_port": 0,
///         "to_port": 0,
///         "protocol": "-1",
///         "cidr_blocks": ["0.0.0.0/0"],
///     }])
/// sample_vpc = aws.ec2.Vpc("sample", cidr_block="10.1.0.0/16")
/// sample_subnet = aws.ec2.Subnet("sample",
///     vpc_id=sample_vpc.id,
///     cidr_block="10.1.1.0/24")
/// sample_placement_group = aws.ec2.PlacementGroup("sample",
///     name="sample",
///     strategy=aws.ec2.PlacementStrategy.CLUSTER)
/// sample_compute_environment = aws.batch.ComputeEnvironment("sample",
///     name="sample",
///     compute_resources={
///         "instance_role": ecs_instance_role_instance_profile.arn,
///         "instance_types": ["c4.large"],
///         "max_vcpus": 16,
///         "min_vcpus": 0,
///         "placement_group": sample_placement_group.name,
///         "security_group_ids": [sample.id],
///         "subnets": [sample_subnet.id],
///         "type": "EC2",
///     },
///     service_role=aws_batch_service_role.arn,
///     type="MANAGED",
///     opts = pulumi.ResourceOptions(depends_on=[aws_batch_service_role_role_policy_attachment]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ec2AssumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "ec2.amazonaws.com",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///             },
///         },
///     });
///
///     var ecsInstanceRole = new Aws.Iam.Role("ecs_instance_role", new()
///     {
///         Name = "ecs_instance_role",
///         AssumeRolePolicy = ec2AssumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var ecsInstanceRoleRolePolicyAttachment = new Aws.Iam.RolePolicyAttachment("ecs_instance_role", new()
///     {
///         Role = ecsInstanceRole.Name,
///         PolicyArn = "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role",
///     });
///
///     var ecsInstanceRoleInstanceProfile = new Aws.Iam.InstanceProfile("ecs_instance_role", new()
///     {
///         Name = "ecs_instance_role",
///         Role = ecsInstanceRole.Name,
///     });
///
///     var batchAssumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "batch.amazonaws.com",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///             },
///         },
///     });
///
///     var awsBatchServiceRole = new Aws.Iam.Role("aws_batch_service_role", new()
///     {
///         Name = "aws_batch_service_role",
///         AssumeRolePolicy = batchAssumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var awsBatchServiceRoleRolePolicyAttachment = new Aws.Iam.RolePolicyAttachment("aws_batch_service_role", new()
///     {
///         Role = awsBatchServiceRole.Name,
///         PolicyArn = "arn:aws:iam::aws:policy/service-role/AWSBatchServiceRole",
///     });
///
///     var sample = new Aws.Ec2.SecurityGroup("sample", new()
///     {
///         Name = "aws_batch_compute_environment_security_group",
///         Egress = new[]
///         {
///             new Aws.Ec2.Inputs.SecurityGroupEgressArgs
///             {
///                 FromPort = 0,
///                 ToPort = 0,
///                 Protocol = "-1",
///                 CidrBlocks = new[]
///                 {
///                     "0.0.0.0/0",
///                 },
///             },
///         },
///     });
///
///     var sampleVpc = new Aws.Ec2.Vpc("sample", new()
///     {
///         CidrBlock = "10.1.0.0/16",
///     });
///
///     var sampleSubnet = new Aws.Ec2.Subnet("sample", new()
///     {
///         VpcId = sampleVpc.Id,
///         CidrBlock = "10.1.1.0/24",
///     });
///
///     var samplePlacementGroup = new Aws.Ec2.PlacementGroup("sample", new()
///     {
///         Name = "sample",
///         Strategy = Aws.Ec2.PlacementStrategy.Cluster,
///     });
///
///     var sampleComputeEnvironment = new Aws.Batch.ComputeEnvironment("sample", new()
///     {
///         Name = "sample",
///         ComputeResources = new Aws.Batch.Inputs.ComputeEnvironmentComputeResourcesArgs
///         {
///             InstanceRole = ecsInstanceRoleInstanceProfile.Arn,
///             InstanceTypes = new[]
///             {
///                 "c4.large",
///             },
///             MaxVcpus = 16,
///             MinVcpus = 0,
///             PlacementGroup = samplePlacementGroup.Name,
///             SecurityGroupIds = new[]
///             {
///                 sample.Id,
///             },
///             Subnets = new[]
///             {
///                 sampleSubnet.Id,
///             },
///             Type = "EC2",
///         },
///         ServiceRole = awsBatchServiceRole.Arn,
///         Type = "MANAGED",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             awsBatchServiceRoleRolePolicyAttachment,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/batch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ec2AssumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"ec2.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ecsInstanceRole, err := iam.NewRole(ctx, "ecs_instance_role", &iam.RoleArgs{
/// 			Name:             pulumi.String("ecs_instance_role"),
/// 			AssumeRolePolicy: pulumi.String(ec2AssumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicyAttachment(ctx, "ecs_instance_role", &iam.RolePolicyAttachmentArgs{
/// 			Role:      ecsInstanceRole.Name,
/// 			PolicyArn: pulumi.String("arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ecsInstanceRoleInstanceProfile, err := iam.NewInstanceProfile(ctx, "ecs_instance_role", &iam.InstanceProfileArgs{
/// 			Name: pulumi.String("ecs_instance_role"),
/// 			Role: ecsInstanceRole.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		batchAssumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"batch.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		awsBatchServiceRole, err := iam.NewRole(ctx, "aws_batch_service_role", &iam.RoleArgs{
/// 			Name:             pulumi.String("aws_batch_service_role"),
/// 			AssumeRolePolicy: pulumi.String(batchAssumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		awsBatchServiceRoleRolePolicyAttachment, err := iam.NewRolePolicyAttachment(ctx, "aws_batch_service_role", &iam.RolePolicyAttachmentArgs{
/// 			Role:      awsBatchServiceRole.Name,
/// 			PolicyArn: pulumi.String("arn:aws:iam::aws:policy/service-role/AWSBatchServiceRole"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sample, err := ec2.NewSecurityGroup(ctx, "sample", &ec2.SecurityGroupArgs{
/// 			Name: pulumi.String("aws_batch_compute_environment_security_group"),
/// 			Egress: ec2.SecurityGroupEgressArray{
/// 				&ec2.SecurityGroupEgressArgs{
/// 					FromPort: pulumi.Int(0),
/// 					ToPort:   pulumi.Int(0),
/// 					Protocol: pulumi.String("-1"),
/// 					CidrBlocks: pulumi.StringArray{
/// 						pulumi.String("0.0.0.0/0"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sampleVpc, err := ec2.NewVpc(ctx, "sample", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.1.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sampleSubnet, err := ec2.NewSubnet(ctx, "sample", &ec2.SubnetArgs{
/// 			VpcId:     sampleVpc.ID(),
/// 			CidrBlock: pulumi.String("10.1.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		samplePlacementGroup, err := ec2.NewPlacementGroup(ctx, "sample", &ec2.PlacementGroupArgs{
/// 			Name:     pulumi.String("sample"),
/// 			Strategy: pulumi.String(ec2.PlacementStrategyCluster),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = batch.NewComputeEnvironment(ctx, "sample", &batch.ComputeEnvironmentArgs{
/// 			Name: pulumi.String("sample"),
/// 			ComputeResources: &batch.ComputeEnvironmentComputeResourcesArgs{
/// 				InstanceRole: ecsInstanceRoleInstanceProfile.Arn,
/// 				InstanceTypes: pulumi.StringArray{
/// 					pulumi.String("c4.large"),
/// 				},
/// 				MaxVcpus:       pulumi.Int(16),
/// 				MinVcpus:       pulumi.Int(0),
/// 				PlacementGroup: samplePlacementGroup.Name,
/// 				SecurityGroupIds: pulumi.StringArray{
/// 					sample.ID(),
/// 				},
/// 				Subnets: pulumi.StringArray{
/// 					sampleSubnet.ID(),
/// 				},
/// 				Type: pulumi.String("EC2"),
/// 			},
/// 			ServiceRole: awsBatchServiceRole.Arn,
/// 			Type:        pulumi.String("MANAGED"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			awsBatchServiceRoleRolePolicyAttachment,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.iam.InstanceProfile;
/// import com.pulumi.aws.iam.InstanceProfileArgs;
/// import com.pulumi.aws.ec2.SecurityGroup;
/// import com.pulumi.aws.ec2.SecurityGroupArgs;
/// import com.pulumi.aws.ec2.inputs.SecurityGroupEgressArgs;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.aws.ec2.PlacementGroup;
/// import com.pulumi.aws.ec2.PlacementGroupArgs;
/// import com.pulumi.aws.batch.ComputeEnvironment;
/// import com.pulumi.aws.batch.ComputeEnvironmentArgs;
/// import com.pulumi.aws.batch.inputs.ComputeEnvironmentComputeResourcesArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var ec2AssumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("ec2.amazonaws.com")
///                     .build())
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var ecsInstanceRole = new Role("ecsInstanceRole", RoleArgs.builder()
///             .name("ecs_instance_role")
///             .assumeRolePolicy(ec2AssumeRole.json())
///             .build());
///
///         var ecsInstanceRoleRolePolicyAttachment = new RolePolicyAttachment("ecsInstanceRoleRolePolicyAttachment", RolePolicyAttachmentArgs.builder()
///             .role(ecsInstanceRole.name())
///             .policyArn("arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role")
///             .build());
///
///         var ecsInstanceRoleInstanceProfile = new InstanceProfile("ecsInstanceRoleInstanceProfile", InstanceProfileArgs.builder()
///             .name("ecs_instance_role")
///             .role(ecsInstanceRole.name())
///             .build());
///
///         final var batchAssumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("batch.amazonaws.com")
///                     .build())
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var awsBatchServiceRole = new Role("awsBatchServiceRole", RoleArgs.builder()
///             .name("aws_batch_service_role")
///             .assumeRolePolicy(batchAssumeRole.json())
///             .build());
///
///         var awsBatchServiceRoleRolePolicyAttachment = new RolePolicyAttachment("awsBatchServiceRoleRolePolicyAttachment", RolePolicyAttachmentArgs.builder()
///             .role(awsBatchServiceRole.name())
///             .policyArn("arn:aws:iam::aws:policy/service-role/AWSBatchServiceRole")
///             .build());
///
///         var sample = new SecurityGroup("sample", SecurityGroupArgs.builder()
///             .name("aws_batch_compute_environment_security_group")
///             .egress(SecurityGroupEgressArgs.builder()
///                 .fromPort(0)
///                 .toPort(0)
///                 .protocol("-1")
///                 .cidrBlocks("0.0.0.0/0")
///                 .build())
///             .build());
///
///         var sampleVpc = new Vpc("sampleVpc", VpcArgs.builder()
///             .cidrBlock("10.1.0.0/16")
///             .build());
///
///         var sampleSubnet = new Subnet("sampleSubnet", SubnetArgs.builder()
///             .vpcId(sampleVpc.id())
///             .cidrBlock("10.1.1.0/24")
///             .build());
///
///         var samplePlacementGroup = new PlacementGroup("samplePlacementGroup", PlacementGroupArgs.builder()
///             .name("sample")
///             .strategy("cluster")
///             .build());
///
///         var sampleComputeEnvironment = new ComputeEnvironment("sampleComputeEnvironment", ComputeEnvironmentArgs.builder()
///             .name("sample")
///             .computeResources(ComputeEnvironmentComputeResourcesArgs.builder()
///                 .instanceRole(ecsInstanceRoleInstanceProfile.arn())
///                 .instanceTypes("c4.large")
///                 .maxVcpus(16)
///                 .minVcpus(0)
///                 .placementGroup(samplePlacementGroup.name())
///                 .securityGroupIds(sample.id())
///                 .subnets(sampleSubnet.id())
///                 .type("EC2")
///                 .build())
///             .serviceRole(awsBatchServiceRole.arn())
///             .type("MANAGED")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(awsBatchServiceRoleRolePolicyAttachment)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ecsInstanceRole:
///     type: aws:iam:Role
///     name: ecs_instance_role
///     properties:
///       name: ecs_instance_role
///       assumeRolePolicy: ${ec2AssumeRole.json}
///   ecsInstanceRoleRolePolicyAttachment:
///     type: aws:iam:RolePolicyAttachment
///     name: ecs_instance_role
///     properties:
///       role: ${ecsInstanceRole.name}
///       policyArn: arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role
///   ecsInstanceRoleInstanceProfile:
///     type: aws:iam:InstanceProfile
///     name: ecs_instance_role
///     properties:
///       name: ecs_instance_role
///       role: ${ecsInstanceRole.name}
///   awsBatchServiceRole:
///     type: aws:iam:Role
///     name: aws_batch_service_role
///     properties:
///       name: aws_batch_service_role
///       assumeRolePolicy: ${batchAssumeRole.json}
///   awsBatchServiceRoleRolePolicyAttachment:
///     type: aws:iam:RolePolicyAttachment
///     name: aws_batch_service_role
///     properties:
///       role: ${awsBatchServiceRole.name}
///       policyArn: arn:aws:iam::aws:policy/service-role/AWSBatchServiceRole
///   sample:
///     type: aws:ec2:SecurityGroup
///     properties:
///       name: aws_batch_compute_environment_security_group
///       egress:
///         - fromPort: 0
///           toPort: 0
///           protocol: '-1'
///           cidrBlocks:
///             - 0.0.0.0/0
///   sampleVpc:
///     type: aws:ec2:Vpc
///     name: sample
///     properties:
///       cidrBlock: 10.1.0.0/16
///   sampleSubnet:
///     type: aws:ec2:Subnet
///     name: sample
///     properties:
///       vpcId: ${sampleVpc.id}
///       cidrBlock: 10.1.1.0/24
///   samplePlacementGroup:
///     type: aws:ec2:PlacementGroup
///     name: sample
///     properties:
///       name: sample
///       strategy: cluster
///   sampleComputeEnvironment:
///     type: aws:batch:ComputeEnvironment
///     name: sample
///     properties:
///       name: sample
///       computeResources:
///         instanceRole: ${ecsInstanceRoleInstanceProfile.arn}
///         instanceTypes:
///           - c4.large
///         maxVcpus: 16
///         minVcpus: 0
///         placementGroup: ${samplePlacementGroup.name}
///         securityGroupIds:
///           - ${sample.id}
///         subnets:
///           - ${sampleSubnet.id}
///         type: EC2
///       serviceRole: ${awsBatchServiceRole.arn}
///       type: MANAGED
///     options:
///       dependsOn:
///         - ${awsBatchServiceRoleRolePolicyAttachment}
/// variables:
///   ec2AssumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - ec2.amazonaws.com
///             actions:
///               - sts:AssumeRole
///   batchAssumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - batch.amazonaws.com
///             actions:
///               - sts:AssumeRole
/// ```
///
///
/// ### Fargate Type
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const sample = new aws.batch.ComputeEnvironment("sample", {
///     name: "sample",
///     computeResources: {
///         maxVcpus: 16,
///         securityGroupIds: [sampleAwsSecurityGroup.id],
///         subnets: [sampleAwsSubnet.id],
///         type: "FARGATE",
///     },
///     serviceRole: awsBatchServiceRoleAwsIamRole.arn,
///     type: "MANAGED",
/// }, {
///     dependsOn: [awsBatchServiceRole],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// sample = aws.batch.ComputeEnvironment("sample",
///     name="sample",
///     compute_resources={
///         "max_vcpus": 16,
///         "security_group_ids": [sample_aws_security_group["id"]],
///         "subnets": [sample_aws_subnet["id"]],
///         "type": "FARGATE",
///     },
///     service_role=aws_batch_service_role_aws_iam_role["arn"],
///     type="MANAGED",
///     opts = pulumi.ResourceOptions(depends_on=[aws_batch_service_role]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sample = new Aws.Batch.ComputeEnvironment("sample", new()
///     {
///         Name = "sample",
///         ComputeResources = new Aws.Batch.Inputs.ComputeEnvironmentComputeResourcesArgs
///         {
///             MaxVcpus = 16,
///             SecurityGroupIds = new[]
///             {
///                 sampleAwsSecurityGroup.Id,
///             },
///             Subnets = new[]
///             {
///                 sampleAwsSubnet.Id,
///             },
///             Type = "FARGATE",
///         },
///         ServiceRole = awsBatchServiceRoleAwsIamRole.Arn,
///         Type = "MANAGED",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             awsBatchServiceRole,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/batch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := batch.NewComputeEnvironment(ctx, "sample", &batch.ComputeEnvironmentArgs{
/// 			Name: pulumi.String("sample"),
/// 			ComputeResources: &batch.ComputeEnvironmentComputeResourcesArgs{
/// 				MaxVcpus: pulumi.Int(16),
/// 				SecurityGroupIds: pulumi.StringArray{
/// 					sampleAwsSecurityGroup.Id,
/// 				},
/// 				Subnets: pulumi.StringArray{
/// 					sampleAwsSubnet.Id,
/// 				},
/// 				Type: pulumi.String("FARGATE"),
/// 			},
/// 			ServiceRole: pulumi.Any(awsBatchServiceRoleAwsIamRole.Arn),
/// 			Type:        pulumi.String("MANAGED"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			awsBatchServiceRole,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.batch.ComputeEnvironment;
/// import com.pulumi.aws.batch.ComputeEnvironmentArgs;
/// import com.pulumi.aws.batch.inputs.ComputeEnvironmentComputeResourcesArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var sample = new ComputeEnvironment("sample", ComputeEnvironmentArgs.builder()
///             .name("sample")
///             .computeResources(ComputeEnvironmentComputeResourcesArgs.builder()
///                 .maxVcpus(16)
///                 .securityGroupIds(sampleAwsSecurityGroup.id())
///                 .subnets(sampleAwsSubnet.id())
///                 .type("FARGATE")
///                 .build())
///             .serviceRole(awsBatchServiceRoleAwsIamRole.arn())
///             .type("MANAGED")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(awsBatchServiceRole)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sample:
///     type: aws:batch:ComputeEnvironment
///     properties:
///       name: sample
///       computeResources:
///         maxVcpus: 16
///         securityGroupIds:
///           - ${sampleAwsSecurityGroup.id}
///         subnets:
///           - ${sampleAwsSubnet.id}
///         type: FARGATE
///       serviceRole: ${awsBatchServiceRoleAwsIamRole.arn}
///       type: MANAGED
///     options:
///       dependsOn:
///         - ${awsBatchServiceRole}
/// ```
///
///
/// ### Setting Update Policy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const sample = new aws.batch.ComputeEnvironment("sample", {
///     name: "sample",
///     computeResources: {
///         allocationStrategy: "BEST_FIT_PROGRESSIVE",
///         instanceRole: ecsInstance.arn,
///         instanceTypes: ["optimal"],
///         maxVcpus: 4,
///         minVcpus: 0,
///         securityGroupIds: [sampleAwsSecurityGroup.id],
///         subnets: [sampleAwsSubnet.id],
///         type: "EC2",
///     },
///     updatePolicy: {
///         jobExecutionTimeoutMinutes: 30,
///         terminateJobsOnUpdate: false,
///     },
///     type: "MANAGED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// sample = aws.batch.ComputeEnvironment("sample",
///     name="sample",
///     compute_resources={
///         "allocation_strategy": "BEST_FIT_PROGRESSIVE",
///         "instance_role": ecs_instance["arn"],
///         "instance_types": ["optimal"],
///         "max_vcpus": 4,
///         "min_vcpus": 0,
///         "security_group_ids": [sample_aws_security_group["id"]],
///         "subnets": [sample_aws_subnet["id"]],
///         "type": "EC2",
///     },
///     update_policy={
///         "job_execution_timeout_minutes": 30,
///         "terminate_jobs_on_update": False,
///     },
///     type="MANAGED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sample = new Aws.Batch.ComputeEnvironment("sample", new()
///     {
///         Name = "sample",
///         ComputeResources = new Aws.Batch.Inputs.ComputeEnvironmentComputeResourcesArgs
///         {
///             AllocationStrategy = "BEST_FIT_PROGRESSIVE",
///             InstanceRole = ecsInstance.Arn,
///             InstanceTypes = new[]
///             {
///                 "optimal",
///             },
///             MaxVcpus = 4,
///             MinVcpus = 0,
///             SecurityGroupIds = new[]
///             {
///                 sampleAwsSecurityGroup.Id,
///             },
///             Subnets = new[]
///             {
///                 sampleAwsSubnet.Id,
///             },
///             Type = "EC2",
///         },
///         UpdatePolicy = new Aws.Batch.Inputs.ComputeEnvironmentUpdatePolicyArgs
///         {
///             JobExecutionTimeoutMinutes = 30,
///             TerminateJobsOnUpdate = false,
///         },
///         Type = "MANAGED",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/batch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := batch.NewComputeEnvironment(ctx, "sample", &batch.ComputeEnvironmentArgs{
/// 			Name: pulumi.String("sample"),
/// 			ComputeResources: &batch.ComputeEnvironmentComputeResourcesArgs{
/// 				AllocationStrategy: pulumi.String("BEST_FIT_PROGRESSIVE"),
/// 				InstanceRole:       pulumi.Any(ecsInstance.Arn),
/// 				InstanceTypes: pulumi.StringArray{
/// 					pulumi.String("optimal"),
/// 				},
/// 				MaxVcpus: pulumi.Int(4),
/// 				MinVcpus: pulumi.Int(0),
/// 				SecurityGroupIds: pulumi.StringArray{
/// 					sampleAwsSecurityGroup.Id,
/// 				},
/// 				Subnets: pulumi.StringArray{
/// 					sampleAwsSubnet.Id,
/// 				},
/// 				Type: pulumi.String("EC2"),
/// 			},
/// 			UpdatePolicy: &batch.ComputeEnvironmentUpdatePolicyArgs{
/// 				JobExecutionTimeoutMinutes: pulumi.Int(30),
/// 				TerminateJobsOnUpdate:      pulumi.Bool(false),
/// 			},
/// 			Type: pulumi.String("MANAGED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.batch.ComputeEnvironment;
/// import com.pulumi.aws.batch.ComputeEnvironmentArgs;
/// import com.pulumi.aws.batch.inputs.ComputeEnvironmentComputeResourcesArgs;
/// import com.pulumi.aws.batch.inputs.ComputeEnvironmentUpdatePolicyArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var sample = new ComputeEnvironment("sample", ComputeEnvironmentArgs.builder()
///             .name("sample")
///             .computeResources(ComputeEnvironmentComputeResourcesArgs.builder()
///                 .allocationStrategy("BEST_FIT_PROGRESSIVE")
///                 .instanceRole(ecsInstance.arn())
///                 .instanceTypes("optimal")
///                 .maxVcpus(4)
///                 .minVcpus(0)
///                 .securityGroupIds(sampleAwsSecurityGroup.id())
///                 .subnets(sampleAwsSubnet.id())
///                 .type("EC2")
///                 .build())
///             .updatePolicy(ComputeEnvironmentUpdatePolicyArgs.builder()
///                 .jobExecutionTimeoutMinutes(30)
///                 .terminateJobsOnUpdate(false)
///                 .build())
///             .type("MANAGED")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sample:
///     type: aws:batch:ComputeEnvironment
///     properties:
///       name: sample
///       computeResources:
///         allocationStrategy: BEST_FIT_PROGRESSIVE
///         instanceRole: ${ecsInstance.arn}
///         instanceTypes:
///           - optimal
///         maxVcpus: 4
///         minVcpus: 0
///         securityGroupIds:
///           - ${sampleAwsSecurityGroup.id}
///         subnets:
///           - ${sampleAwsSubnet.id}
///         type: EC2
///       updatePolicy:
///         jobExecutionTimeoutMinutes: 30
///         terminateJobsOnUpdate: false
///       type: MANAGED
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the compute environment.
///
///
/// Using `pulumi import`, import AWS Batch compute using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:batch/computeEnvironment:ComputeEnvironment sample sample
/// ```
///
/// [1]: http://docs.aws.amazon.com/batch/latest/userguide/what-is-batch.html
/// [2]: http://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html
/// [3]: http://docs.aws.amazon.com/batch/latest/userguide/troubleshooting.html
class ComputeEnvironment extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the compute environment.
  late final pulumi.Output<String> arn;

  /// Details of the compute resources managed by the compute environment. This parameter is required for managed compute environments. See details below.
  late final pulumi.Output<ComputeEnvironmentComputeResources> computeResources;

  /// The Amazon Resource Name (ARN) of the underlying Amazon ECS cluster used by the compute environment.
  late final pulumi.Output<String> ecsClusterArn;

  /// Details for the Amazon EKS cluster that supports the compute environment. See details below.
  late final pulumi.Output<ComputeEnvironmentEksConfiguration?>
  eksConfiguration;

  /// The name for your compute environment. Up to 128 letters (uppercase and lowercase), numbers, and underscores are allowed. If omitted, the provider will assign a random, unique name.
  late final pulumi.Output<String> name;

  /// Creates a unique compute environment name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The full Amazon Resource Name (ARN) of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf.
  late final pulumi.Output<String> serviceRole;

  /// The state of the compute environment. If the state is `ENABLED`, then the compute environment accepts jobs from a queue and can scale out automatically based on queues. Valid items are `ENABLED` or `DISABLED`. Defaults to `ENABLED`.
  late final pulumi.Output<String?> state;

  /// The current status of the compute environment (for example, CREATING or VALID).
  late final pulumi.Output<String> status;

  /// A short, human-readable string to provide additional details about the current status of the compute environment.
  late final pulumi.Output<String> statusReason;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The type of the compute environment. Valid items are `MANAGED` or `UNMANAGED`.
  late final pulumi.Output<String> type;

  /// Specifies the infrastructure update policy for the compute environment. See details below.
  late final pulumi.Output<ComputeEnvironmentUpdatePolicy> updatePolicy;

  /// Creates a new [ComputeEnvironment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ComputeEnvironment]. {@macro pulumi_batch_compute_environment_compute_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ComputeEnvironment(
    String name, {
    ComputeEnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:batch/computeEnvironment:ComputeEnvironment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    computeResources = registerOutput<ComputeEnvironmentComputeResources>(
      'computeResources',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ComputeEnvironmentComputeResources.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    ecsClusterArn = registerOutput<String>('ecsClusterArn');
    eksConfiguration = registerOutput<ComputeEnvironmentEksConfiguration?>(
      'eksConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ComputeEnvironmentEksConfiguration.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    serviceRole = registerOutput<String>('serviceRole');
    state = registerOutput<String?>('state');
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    type = registerOutput<String>('type');
    updatePolicy = registerOutput<ComputeEnvironmentUpdatePolicy>(
      'updatePolicy',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ComputeEnvironmentUpdatePolicy.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }

  /// Gets an existing [ComputeEnvironment] resource's state with the given [name] and [id].
  static ComputeEnvironment get(
    String name,
    pulumi.Input<String> id, {
    ComputeEnvironmentState? state,
  }) {
    return ComputeEnvironment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ComputeEnvironment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:batch/computeEnvironment:ComputeEnvironment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    computeResources = registerOutput<ComputeEnvironmentComputeResources>(
      'computeResources',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ComputeEnvironmentComputeResources.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    ecsClusterArn = registerOutput<String>('ecsClusterArn');
    eksConfiguration = registerOutput<ComputeEnvironmentEksConfiguration?>(
      'eksConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ComputeEnvironmentEksConfiguration.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    serviceRole = registerOutput<String>('serviceRole');
    this.state = registerOutput<String?>('state');
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    type = registerOutput<String>('type');
    updatePolicy = registerOutput<ComputeEnvironmentUpdatePolicy>(
      'updatePolicy',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ComputeEnvironmentUpdatePolicy.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
