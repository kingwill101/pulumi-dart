import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_args.dart';
import 'package:pulumi_aws/ec2.dart' as pulumi_aws_ec2;

/// # Services
///
/// You can use an Amazon ECS service to run and maintain a specified number of instances of a task definition simultaneously in an Amazon ECS cluster. If one of your tasks fails or stops, the Amazon ECS service scheduler launches another instance of your task definition to replace it. This helps maintain your desired number of tasks in the service.
///
/// This component uses both the [AWS](https://www.pulumi.com/registry/packages/aws/) and [AWS Cloud Control](https://www.pulumi.com/registry/packages/aws-native/) providers so make sure they are both configured to use the same account and region.
///
/// ## Example Usage
///
/// ### Basic example
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as awsx from "@pulumi/awsx";
///
/// const cluster = new aws.ecs.Cluster("cluster", {});
/// const vpc = new awsx.ec2.Vpc("vpc", {});
/// const taskDefinition = new awsx.ecs.TaskDefinition("taskDefinition", {containers: {
///     app: {
///         image: "nginx:stable",
///         portMappings: [{
///             containerPort: 80,
///         }],
///     },
/// }});
/// const service = new awsx.ecs.Service("service", {
///     clusterArn: cluster.arn,
///     taskDefinitionArn: taskDefinition.taskDefinitionArn,
///     vpcSubnetIds: vpc.privateSubnetIds,
/// });
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_awsx as awsx
///
/// cluster = aws.ecs.Cluster("cluster")
/// vpc = awsx.ec2.Vpc("vpc")
/// task_definition = awsx.ecs.TaskDefinition("taskDefinition", containers={
///     "app": {
///         "image": "nginx:stable",
///         "port_mappings": [{
///             "container_port": float(80),
///         }],
///     },
/// })
/// service = awsx.ecs.Service("service",
///     cluster_arn=cluster.arn,
///     task_definition_arn=task_definition.task_definition_arn,
///     vpc_subnet_ids=vpc.private_subnet_ids)
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi-awsx/sdk/v3/go/awsx/ec2"
/// 	awsxecs "github.com/pulumi/pulumi-awsx/sdk/v3/go/awsx/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cluster, err := ecs.NewCluster(ctx, "cluster", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpc, err := ec2.NewVpc(ctx, "vpc", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		taskDefinition, err := awsxecs.NewTaskDefinition(ctx, "taskDefinition", &awsxecs.TaskDefinitionArgs{
/// 			Containers: map[string]*ecs.ContainerDefinitionArgs{
/// 				"app": ecs.ContainerDefinitionArgs{
/// 					Image: pulumi.String("nginx:stable"),
/// 					PortMappings: []ecs.AwsvpcPortMappingArgs{
/// 						{
/// 							ContainerPort: 80,
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = awsxecs.NewService(ctx, "service", &awsxecs.ServiceArgs{
/// 			ClusterArn:        cluster.Arn,
/// 			TaskDefinitionArn: taskDefinition.TaskDefinitionArn,
/// 			VpcSubnetIds:      vpc.PrivateSubnetIds,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
///
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Awsx = Pulumi.Awsx;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cluster = new Aws.Ecs.Cluster("cluster");
///
///     var vpc = new Awsx.Ec2.Vpc("vpc");
///
///     var taskDefinition = new Awsx.Ecs.TaskDefinition("taskDefinition", new()
///     {
///         Containers =
///         {
///             { "app", new Awsx.Ecs.Inputs.ContainerDefinitionArgs
///             {
///                 Image = "nginx:stable",
///                 PortMappings = new()
///                 {
///                     new Awsx.Ecs.Inputs.AwsvpcPortMappingArgs
///                     {
///                         ContainerPort = 80.0,
///                     },
///                 },
///             } },
///         },
///     });
///
///     var service = new Awsx.Ecs.Service("service", new()
///     {
///         ClusterArn = cluster.Arn,
///         TaskDefinitionArn = taskDefinition.TaskDefinitionArn,
///         VpcSubnetIds = vpc.PrivateSubnetIds,
///     });
///
/// });
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.Cluster;
/// import com.pulumi.awsx.ec2.Vpc;
/// import com.pulumi.awsx.ecs.TaskDefinition;
/// import com.pulumi.awsx.ecs.TaskDefinitionArgs;
/// import com.pulumi.awsx.ecs.inputs.ContainerDefinitionArgs;
/// import com.pulumi.awsx.ecs.inputs.AwsvpcPortMappingArgs;
/// import com.pulumi.awsx.ecs.Service;
/// import com.pulumi.awsx.ecs.ServiceArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var cluster = new Cluster("cluster");
///
///         var vpc = new Vpc("vpc");
///
///         var taskDefinition = new TaskDefinition("taskDefinition", TaskDefinitionArgs.builder()
///             .containers(Map.of("app", ContainerDefinitionArgs.builder()
///                 .image("nginx:stable")
///                 .portMappings(AwsvpcPortMappingArgs.builder()
///                     .containerPort(80.0)
///                     .build())
///                 .build()))
///             .build());
///
///         var service = new Service("service", ServiceArgs.builder()
///             .clusterArn(cluster.arn())
///             .taskDefinitionArn(taskDefinition.taskDefinitionArn())
///             .vpcSubnetIds(vpc.privateSubnetIds())
///             .build());
///
///     }
/// }
/// ```
///
/// ```yaml
/// name: ecs-service
/// runtime: yaml
/// resources:
///   cluster:
///     type: aws:ecs/cluster:Cluster
///   vpc:
///     type: awsx:ec2:Vpc
///   taskDefinition:
///     type: awsx:ecs:TaskDefinition
///     properties:
///       containers:
///         app:
///           image: nginx:stable
///           portMappings:
///             - containerPort: 80
///   service:
///     type: awsx:ecs:Service
///     properties:
///       clusterArn: ${cluster.arn}
///       taskDefinitionArn: ${taskDefinition.taskDefinitionArn}
///       vpcSubnetIds: ${vpc.privateSubnetIds}
/// ```
///
///
///
/// The task definition must use `awsvpc` networking and be compatible with the service's selected capacity. The AWSX `TaskDefinitition` use `awsvpc` networking by default.
///
/// ### Application Load Balancer
///
/// Use `loadBalancerAttachments` to route requests from an existing Application Load Balancer listener to a container in the service.
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as awsx from "@pulumi/awsx";
///
/// const vpc = new awsx.ec2.Vpc("vpc", {numberOfAvailabilityZones: 2});
/// const frontend = new aws.ec2.SecurityGroup("frontend", {vpcId: vpc.vpcId});
/// const frontendHttp = new aws.vpc.SecurityGroupIngressRule("frontendHttp", {
///     securityGroupId: frontend.id,
///     ipProtocol: "-1",
///     cidrIpv4: "0.0.0.0/0",
/// });
/// const frontendEgress = new aws.vpc.SecurityGroupEgressRule("frontendEgress", {
///     securityGroupId: frontend.id,
///     ipProtocol: "tcp",
///     fromPort: 80,
///     toPort: 80,
///     cidrIpv4: vpc.vpc.cidrBlock,
/// });
/// const alb = new aws.lb.LoadBalancer("alb", {
///     loadBalancerType: "application",
///     internal: false,
///     subnets: vpc.publicSubnetIds,
///     securityGroups: [frontend.id],
/// });
/// const listener = new aws.lb.Listener("listener", {
///     loadBalancerArn: alb.arn,
///     port: 80,
///     protocol: "HTTP",
///     defaultActions: [{
///         type: "fixed-response",
///         fixedResponse: {
///             statusCode: "404",
///             contentType: "text/plain",
///             messageBody: "Not found",
///         },
///     }],
/// });
/// const cluster = new aws.ecs.Cluster("cluster", {});
/// const repository = new awsx.ecr.Repository("repository", {});
/// const image = new awsx.ecr.Image("image", {
///     repositoryUrl: repository.repository.repositoryUrl,
///     context: "./app",
///     platform: "linux/amd64",
/// });
/// const taskDefinition = new awsx.ecs.TaskDefinition("taskDefinition", {containers: {
///     app: {
///         image: image.imageUri,
///         portMappings: [{
///             containerPort: 80,
///         }],
///     },
/// }});
/// const service = new awsx.ecs.Service("service", {
///     clusterArn: cluster.arn,
///     taskDefinitionArn: taskDefinition.taskDefinitionArn,
///     vpcSubnetIds: vpc.privateSubnetIds,
///     loadBalancerAttachments: {
///         app: {
///             application: {
///                 containerName: "app",
///                 containerPort: 80,
///                 listenerArn: listener.arn,
///                 priority: 10,
///                 targetHealthCheck: {
///                     path: "/health",
///                 },
///             },
///         },
///     },
/// }, {
///     dependsOn: [
///         frontendHttp,
///         frontendEgress,
///     ],
/// });
/// export const url = pulumi.interpolate`http://${alb.dnsName}`;
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_awsx as awsx
///
/// vpc = awsx.ec2.Vpc("vpc", number_of_availability_zones=2)
/// frontend = aws.ec2.SecurityGroup("frontend", vpc_id=vpc.vpc_id)
/// frontend_http = aws.vpc.SecurityGroupIngressRule("frontendHttp",
///     security_group_id=frontend.id,
///     ip_protocol="-1",
///     cidr_ipv4="0.0.0.0/0")
/// frontend_egress = aws.vpc.SecurityGroupEgressRule("frontendEgress",
///     security_group_id=frontend.id,
///     ip_protocol="tcp",
///     from_port=80,
///     to_port=80,
///     cidr_ipv4=vpc.vpc.cidr_block)
/// alb = aws.lb.LoadBalancer("alb",
///     load_balancer_type="application",
///     internal=False,
///     subnets=vpc.public_subnet_ids,
///     security_groups=[frontend.id])
/// listener = aws.lb.Listener("listener",
///     load_balancer_arn=alb.arn,
///     port=80,
///     protocol="HTTP",
///     default_actions=[{
///         "type": "fixed-response",
///         "fixed_response": {
///             "status_code": "404",
///             "content_type": "text/plain",
///             "message_body": "Not found",
///         },
///     }])
/// cluster = aws.ecs.Cluster("cluster")
/// repository = awsx.ecr.Repository("repository")
/// image = awsx.ecr.Image("image",
///     repository_url=repository.repository.repository_url,
///     context="./app",
///     platform="linux/amd64")
/// task_definition = awsx.ecs.TaskDefinition("taskDefinition", containers={
///     "app": {
///         "image": image.image_uri,
///         "port_mappings": [{
///             "container_port": float(80),
///         }],
///     },
/// })
/// service = awsx.ecs.Service("service",
///     cluster_arn=cluster.arn,
///     task_definition_arn=task_definition.task_definition_arn,
///     vpc_subnet_ids=vpc.private_subnet_ids,
///     load_balancer_attachments={
///         "app": {
///             "application": {
///                 "container_name": "app",
///                 "container_port": float(80),
///                 "listener_arn": listener.arn,
///                 "priority": float(10),
///                 "target_health_check": {
///                     "path": "/health",
///                 },
///             },
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             frontend_http,
///             frontend_egress,
///         ]))
/// pulumi.export("url", alb.dns_name.apply(lambda dns_name: f"http://{dns_name}"))
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	awsec2 "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpc"
/// 	"github.com/pulumi/pulumi-awsx/sdk/v3/go/awsx/ec2"
/// 	"github.com/pulumi/pulumi-awsx/sdk/v3/go/awsx/ecr"
/// 	awsxecs "github.com/pulumi/pulumi-awsx/sdk/v3/go/awsx/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		vpc2, err := ec2.NewVpc(ctx, "vpc", &ec2.VpcArgs{
/// 			NumberOfAvailabilityZones: 2,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		frontend, err := awsec2.NewSecurityGroup(ctx, "frontend", &awsec2.SecurityGroupArgs{
/// 			VpcId: vpc2.VpcId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		frontendHttp, err := vpc.NewSecurityGroupIngressRule(ctx, "frontendHttp", &vpc.SecurityGroupIngressRuleArgs{
/// 			SecurityGroupId: frontend.ID().ToIDOutput().ToStringOutput(),
/// 			IpProtocol:      pulumi.String("-1"),
/// 			CidrIpv4:        pulumi.String("0.0.0.0/0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		frontendEgress, err := vpc.NewSecurityGroupEgressRule(ctx, "frontendEgress", &vpc.SecurityGroupEgressRuleArgs{
/// 			SecurityGroupId: frontend.ID().ToIDOutput().ToStringOutput(),
/// 			IpProtocol:      pulumi.String("tcp"),
/// 			FromPort:        pulumi.Int(80),
/// 			ToPort:          pulumi.Int(80),
/// 			CidrIpv4: vpc2.Vpc.ApplyT(func(vpc *ec2.Vpc) (string, error) {
/// 				return vpc2.CidrBlock, nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		alb, err := lb.NewLoadBalancer(ctx, "alb", &lb.LoadBalancerArgs{
/// 			LoadBalancerType: pulumi.String("application"),
/// 			Internal:         pulumi.Bool(false),
/// 			Subnets:          vpc2.PublicSubnetIds,
/// 			SecurityGroups: pulumi.StringArray{
/// 				frontend.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		listener, err := lb.NewListener(ctx, "listener", &lb.ListenerArgs{
/// 			LoadBalancerArn: alb.Arn,
/// 			Port:            pulumi.Int(80),
/// 			Protocol:        pulumi.String("HTTP"),
/// 			DefaultActions: lb.ListenerDefaultActionArray{
/// 				&lb.ListenerDefaultActionArgs{
/// 					Type: pulumi.String("fixed-response"),
/// 					FixedResponse: &lb.ListenerDefaultActionFixedResponseArgs{
/// 						StatusCode:  pulumi.String("404"),
/// 						ContentType: pulumi.String("text/plain"),
/// 						MessageBody: pulumi.String("Not found"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cluster, err := ecs.NewCluster(ctx, "cluster", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		repository, err := ecr.NewRepository(ctx, "repository", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		image, err := ecr.NewImage(ctx, "image", &ecr.ImageArgs{
/// 			RepositoryUrl: repository.Repository.ApplyT(func(repository *ecr.Repository) (string, error) {
/// 				return repository.RepositoryUrl, nil
/// 			}).(pulumi.StringOutput),
/// 			Context:  pulumi.String("./app"),
/// 			Platform: pulumi.String("linux/amd64"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		taskDefinition, err := awsxecs.NewTaskDefinition(ctx, "taskDefinition", &awsxecs.TaskDefinitionArgs{
/// 			Containers: map[string]*ecs.ContainerDefinitionArgs{
/// 				"app": ecs.ContainerDefinitionArgs{
/// 					Image: image.ImageUri,
/// 					PortMappings: []ecs.AwsvpcPortMappingArgs{
/// 						{
/// 							ContainerPort: 80,
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = awsxecs.NewService(ctx, "service", &awsxecs.ServiceArgs{
/// 			ClusterArn:        cluster.Arn,
/// 			TaskDefinitionArn: taskDefinition.TaskDefinitionArn,
/// 			VpcSubnetIds:      vpc2.PrivateSubnetIds,
/// 			LoadBalancerAttachments: map[string]ecs.ServiceLoadBalancerAttachmentArgs{
/// 				"app": ecs.ServiceLoadBalancerAttachmentArgs{
/// 					Application: ecs.ApplicationLoadBalancerAttachmentArgs{
/// 						ContainerName: "app",
/// 						ContainerPort: 80,
/// 						ListenerArn:   listener.Arn,
/// 						Priority:      10,
/// 						TargetHealthCheck: ecs.TargetGroupHealthCheckArgs{
/// 							Path: "/health",
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			frontendHttp,
/// 			frontendEgress,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("url", alb.DnsName.ApplyT(func(dnsName string) (string, error) {
/// 			return fmt.Sprintf("http://%v", dnsName), nil
/// 		}).(pulumi.StringOutput))
/// 		return nil
/// 	})
/// }
/// ```
///
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Awsx = Pulumi.Awsx;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vpc = new Awsx.Ec2.Vpc("vpc", new()
///     {
///         NumberOfAvailabilityZones = 2,
///     });
///
///     var frontend = new Aws.Ec2.SecurityGroup("frontend", new()
///     {
///         VpcId = vpc.VpcId,
///     });
///
///     var frontendHttp = new Aws.Vpc.SecurityGroupIngressRule("frontendHttp", new()
///     {
///         SecurityGroupId = frontend.Id,
///         IpProtocol = "-1",
///         CidrIpv4 = "0.0.0.0/0",
///     });
///
///     var frontendEgress = new Aws.Vpc.SecurityGroupEgressRule("frontendEgress", new()
///     {
///         SecurityGroupId = frontend.Id,
///         IpProtocol = "tcp",
///         FromPort = 80,
///         ToPort = 80,
///         CidrIpv4 = vpc.Vpc.Apply(vpc => vpc.CidrBlock),
///     });
///
///     var alb = new Aws.LB.LoadBalancer("alb", new()
///     {
///         LoadBalancerType = "application",
///         Internal = false,
///         Subnets = vpc.PublicSubnetIds,
///         SecurityGroups = new[]
///         {
///             frontend.Id,
///         },
///     });
///
///     var listener = new Aws.LB.Listener("listener", new()
///     {
///         LoadBalancerArn = alb.Arn,
///         Port = 80,
///         Protocol = "HTTP",
///         DefaultActions = new[]
///         {
///             new Aws.LB.Inputs.ListenerDefaultActionArgs
///             {
///                 Type = "fixed-response",
///                 FixedResponse = new Aws.LB.Inputs.ListenerDefaultActionFixedResponseArgs
///                 {
///                     StatusCode = "404",
///                     ContentType = "text/plain",
///                     MessageBody = "Not found",
///                 },
///             },
///         },
///     });
///
///     var cluster = new Aws.Ecs.Cluster("cluster");
///
///     var repository = new Awsx.Ecr.Repository("repository");
///
///     var image = new Awsx.Ecr.Image("image", new()
///     {
///         RepositoryUrl = repository.Repository.Apply(repository => repository.RepositoryUrl),
///         Context = "./app",
///         Platform = "linux/amd64",
///     });
///
///     var taskDefinition = new Awsx.Ecs.TaskDefinition("taskDefinition", new()
///     {
///         Containers =
///         {
///             { "app", new Awsx.Ecs.Inputs.ContainerDefinitionArgs
///             {
///                 Image = image.ImageUri,
///                 PortMappings = new()
///                 {
///                     new Awsx.Ecs.Inputs.AwsvpcPortMappingArgs
///                     {
///                         ContainerPort = 80.0,
///                     },
///                 },
///             } },
///         },
///     });
///
///     var service = new Awsx.Ecs.Service("service", new()
///     {
///         ClusterArn = cluster.Arn,
///         TaskDefinitionArn = taskDefinition.TaskDefinitionArn,
///         VpcSubnetIds = vpc.PrivateSubnetIds,
///         LoadBalancerAttachments =
///         {
///             { "app", new Awsx.Ecs.Inputs.ServiceLoadBalancerAttachmentArgs
///             {
///                 Application = new Awsx.Ecs.Inputs.ApplicationLoadBalancerAttachmentArgs
///                 {
///                     ContainerName = "app",
///                     ContainerPort = 80.0,
///                     ListenerArn = listener.Arn,
///                     Priority = 10.0,
///                     TargetHealthCheck = new Awsx.Ecs.Inputs.TargetGroupHealthCheckArgs
///                     {
///                         Path = "/health",
///                     },
///                 },
///             } },
///         },
///     }, new ComponentResourceOptions
///     {
///         DependsOn =
///         {
///             frontendHttp,
///             frontendEgress,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["url"] = alb.DnsName.Apply(dnsName => $"http://{dnsName}"),
///     };
/// });
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.awsx.ec2.Vpc;
/// import com.pulumi.awsx.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.SecurityGroup;
/// import com.pulumi.aws.ec2.SecurityGroupArgs;
/// import com.pulumi.aws.vpc.SecurityGroupIngressRule;
/// import com.pulumi.aws.vpc.SecurityGroupIngressRuleArgs;
/// import com.pulumi.aws.vpc.SecurityGroupEgressRule;
/// import com.pulumi.aws.vpc.SecurityGroupEgressRuleArgs;
/// import com.pulumi.aws.lb.LoadBalancer;
/// import com.pulumi.aws.lb.LoadBalancerArgs;
/// import com.pulumi.aws.lb.Listener;
/// import com.pulumi.aws.lb.ListenerArgs;
/// import com.pulumi.aws.lb.inputs.ListenerDefaultActionArgs;
/// import com.pulumi.aws.lb.inputs.ListenerDefaultActionFixedResponseArgs;
/// import com.pulumi.aws.ecs.Cluster;
/// import com.pulumi.awsx.ecr.Repository;
/// import com.pulumi.awsx.ecr.Image;
/// import com.pulumi.awsx.ecr.ImageArgs;
/// import com.pulumi.awsx.ecs.TaskDefinition;
/// import com.pulumi.awsx.ecs.TaskDefinitionArgs;
/// import com.pulumi.awsx.ecs.inputs.ContainerDefinitionArgs;
/// import com.pulumi.awsx.ecs.inputs.AwsvpcPortMappingArgs;
/// import com.pulumi.awsx.ecs.Service;
/// import com.pulumi.awsx.ecs.ServiceArgs;
/// import com.pulumi.awsx.ecs.inputs.ServiceLoadBalancerAttachmentArgs;
/// import com.pulumi.awsx.ecs.inputs.ApplicationLoadBalancerAttachmentArgs;
/// import com.pulumi.awsx.ecs.inputs.TargetGroupHealthCheckArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var vpc = new Vpc("vpc", VpcArgs.builder()
///             .numberOfAvailabilityZones(2)
///             .build());
///
///         var frontend = new SecurityGroup("frontend", SecurityGroupArgs.builder()
///             .vpcId(vpc.vpcId())
///             .build());
///
///         var frontendHttp = new SecurityGroupIngressRule("frontendHttp", SecurityGroupIngressRuleArgs.builder()
///             .securityGroupId(frontend.id())
///             .ipProtocol("-1")
///             .cidrIpv4("0.0.0.0/0")
///             .build());
///
///         var frontendEgress = new SecurityGroupEgressRule("frontendEgress", SecurityGroupEgressRuleArgs.builder()
///             .securityGroupId(frontend.id())
///             .ipProtocol("tcp")
///             .fromPort(80)
///             .toPort(80)
///             .cidrIpv4(vpc.vpc().applyValue(_vpc -> _vpc.cidrBlock()))
///             .build());
///
///         var alb = new LoadBalancer("alb", LoadBalancerArgs.builder()
///             .loadBalancerType("application")
///             .internal(false)
///             .subnets(vpc.publicSubnetIds())
///             .securityGroups(frontend.id())
///             .build());
///
///         var listener = new Listener("listener", ListenerArgs.builder()
///             .loadBalancerArn(alb.arn())
///             .port(80)
///             .protocol("HTTP")
///             .defaultActions(ListenerDefaultActionArgs.builder()
///                 .type("fixed-response")
///                 .fixedResponse(ListenerDefaultActionFixedResponseArgs.builder()
///                     .statusCode("404")
///                     .contentType("text/plain")
///                     .messageBody("Not found")
///                     .build())
///                 .build())
///             .build());
///
///         var cluster = new Cluster("cluster");
///
///         var repository = new Repository("repository");
///
///         var image = new Image("image", ImageArgs.builder()
///             .repositoryUrl(repository.repository().applyValue(_repository -> _repository.repositoryUrl()))
///             .context("./app")
///             .platform("linux/amd64")
///             .build());
///
///         var taskDefinition = new TaskDefinition("taskDefinition", TaskDefinitionArgs.builder()
///             .containers(Map.of("app", ContainerDefinitionArgs.builder()
///                 .image(image.imageUri())
///                 .portMappings(AwsvpcPortMappingArgs.builder()
///                     .containerPort(80.0)
///                     .build())
///                 .build()))
///             .build());
///
///         var service = new Service("service", ServiceArgs.builder()
///             .clusterArn(cluster.arn())
///             .taskDefinitionArn(taskDefinition.taskDefinitionArn())
///             .vpcSubnetIds(vpc.privateSubnetIds())
///             .loadBalancerAttachments(Map.of("app", ServiceLoadBalancerAttachmentArgs.builder()
///                 .application(ApplicationLoadBalancerAttachmentArgs.builder()
///                     .containerName("app")
///                     .containerPort(80.0)
///                     .listenerArn(listener.arn())
///                     .priority(10.0)
///                     .targetHealthCheck(TargetGroupHealthCheckArgs.builder()
///                         .path("/health")
///                         .build())
///                     .build())
///                 .build()))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     frontendHttp,
///                     frontendEgress)
///                 .build());
///
///         ctx.export("url", alb.dnsName().applyValue(_dnsName -> String.format("http://%s", _dnsName)));
///     }
/// }
/// ```
///
/// ```yaml
/// name: ecs-service-alb
/// runtime: yaml
/// resources:
///   vpc:
///     type: awsx:ec2:Vpc
///     properties:
///       numberOfAvailabilityZones: 2
///   frontend:
///     type: aws:ec2/securityGroup:SecurityGroup
///     properties:
///       vpcId: ${vpc.vpcId}
///   frontendHttp:
///     type: aws:vpc/securityGroupIngressRule:SecurityGroupIngressRule
///     properties:
///       securityGroupId: ${frontend.id}
///       ipProtocol: -1
///       cidrIpv4: 0.0.0.0/0
///   frontendEgress:
///     type: aws:vpc/securityGroupEgressRule:SecurityGroupEgressRule
///     properties:
///       securityGroupId: ${frontend.id}
///       ipProtocol: tcp
///       fromPort: 80
///       toPort: 80
///       cidrIpv4: ${vpc.vpc.cidrBlock}
///   alb:
///     type: aws:lb/loadBalancer:LoadBalancer
///     properties:
///       loadBalancerType: application
///       internal: false
///       subnets: ${vpc.publicSubnetIds}
///       securityGroups:
///         - ${frontend.id}
///   listener:
///     type: aws:lb/listener:Listener
///     properties:
///       loadBalancerArn: ${alb.arn}
///       port: 80
///       protocol: HTTP
///       defaultActions:
///         - type: fixed-response
///           fixedResponse:
///             statusCode: '404'
///             contentType: text/plain
///             messageBody: Not found
///   cluster:
///     type: aws:ecs/cluster:Cluster
///   repository:
///     type: awsx:ecr:Repository
///   image:
///     type: awsx:ecr:Image
///     properties:
///       repositoryUrl: ${repository.repository.repositoryUrl}
///       context: ./app
///       platform: linux/amd64
///   taskDefinition:
///     type: awsx:ecs:TaskDefinition
///     properties:
///       containers:
///         app:
///           image: ${image.imageUri}
///           portMappings:
///             - containerPort: 80
///   service:
///     type: awsx:ecs:Service
///     properties:
///       clusterArn: ${cluster.arn}
///       taskDefinitionArn: ${taskDefinition.taskDefinitionArn}
///       vpcSubnetIds: ${vpc.privateSubnetIds}
///       loadBalancerAttachments:
///         app:
///           application:
///             containerName: app
///             containerPort: 80
///             listenerArn: ${listener.arn}
///             priority: 10
///             targetHealthCheck:
///               path: /health
///     options:
///       dependsOn:
///         - ${frontendHttp}
///         - ${frontendEgress}
/// outputs:
///   url: http://${alb.dnsName}
/// ```
///
///
///
/// With `match` omitted, the attachment forwards all request paths. The listener's default 404 response is a fallback for requests that do not match a forwarding rule.
///
/// ### Single attachment
///
/// A single attachment can express all traffic going to the backend service.
///
/// - One hostname serving many paths.
/// - Multiple hostnames route to the same backend
/// - Several path patterns route to the same backend
///
/// For example, an application that serves `/users`, `/orders`, and `/admin` through `api.example.com` can create a single attachment
/// that matches on hostname and let the backend application handle the URL paths.
///
///
///
/// ```typescript
/// const service = new awsx.ecs.Service("service", {
///     clusterArn: cluster.arn,
///     deploymentStrategy: {
///         canary: {
///             bakeTimeMinutes: 5,
///             canaryBakeTimeMinutes: 10,
///             canaryPercent: 10,
///         },
///     },
///     loadBalancerAttachments: {
///         app: {
///             application: {
///                 containerName: "app",
///                 containerPort: 80,
///                 listenerArn: listener.arn,
///                 match: {
///                     hostnames: {
///                         values: ["api.example.com"],
///                     },
///                 },
///                 priority: 50,
///                 targetHealthCheck: {
///                     path: "/health",
///                 },
///             },
///         },
///     },
///     taskDefinitionArn: taskDefinition.taskDefinitionArn,
///     vpcSubnetIds: vpc.privateSubnetIds,
/// }, {
///     dependsOn: [
///         frontendHttp,
///         frontendEgress,
///     ],
/// });
/// ```
///
/// ```python
/// service = awsx.ecs.Service("service",
///     cluster_arn=cluster.arn,
///     deployment_strategy={
///         "canary": {
///             "bake_time_minutes": float(5),
///             "canary_bake_time_minutes": float(10),
///             "canary_percent": float(10),
///         },
///     },
///     load_balancer_attachments={
///         "app": {
///             "application": {
///                 "container_name": "app",
///                 "container_port": float(80),
///                 "listener_arn": listener.arn,
///                 "match": {
///                     "hostnames": {
///                         "values": ["api.example.com"],
///                     },
///                 },
///                 "priority": float(50),
///                 "target_health_check": {
///                     "path": "/health",
///                 },
///             },
///         },
///     },
///     task_definition_arn=task_definition.task_definition_arn,
///     vpc_subnet_ids=vpc.private_subnet_ids,
///     opts = pulumi.ResourceOptions(depends_on=[
///             frontend_http,
///             frontend_egress,
///         ]))
/// ```
///
/// ```go
/// service, err := awsxecs.NewService(ctx, "service", &awsxecs.ServiceArgs{
/// 	ClusterArn: cluster.Arn,
/// 	DeploymentStrategy: ecs.ServiceDeploymentStrategyArgs{
/// 		Canary: ecs.CanaryDeploymentStrategyArgs{
/// 			BakeTimeMinutes:       5,
/// 			CanaryBakeTimeMinutes: 10,
/// 			CanaryPercent:         10,
/// 		},
/// 	},
/// 	LoadBalancerAttachments: map[string]ecs.ServiceLoadBalancerAttachmentArgs{
/// 		"app": ecs.ServiceLoadBalancerAttachmentArgs{
/// 			Application: ecs.ApplicationLoadBalancerAttachmentArgs{
/// 				ContainerName: "app",
/// 				ContainerPort: 80,
/// 				ListenerArn:   listener.Arn,
/// 				Match: ecs.ListenerConditionsArgs{
/// 					Hostnames: ecs.StringMatchArgs{
/// 						Values: []pulumi.String{
/// 							pulumi.String("api.example.com"),
/// 						},
/// 					},
/// 				},
/// 				Priority: 50,
/// 				TargetHealthCheck: ecs.TargetGroupHealthCheckArgs{
/// 					Path: "/health",
/// 				},
/// 			},
/// 		},
/// 	},
/// 	TaskDefinitionArn: taskDefinition.TaskDefinitionArn,
/// 	VpcSubnetIds:      vpc2.PrivateSubnetIds,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// 	frontendHttp,
/// 	frontendEgress,
/// }))
/// if err != nil {
/// 	return err
/// }
/// ```
///
/// ```csharp
/// var service = new Awsx.Ecs.Service("service", new()
/// {
///     ClusterArn = cluster.Arn,
///     DeploymentStrategy = new Awsx.Ecs.Inputs.ServiceDeploymentStrategyArgs
///     {
///         Canary = new Awsx.Ecs.Inputs.CanaryDeploymentStrategyArgs
///         {
///             BakeTimeMinutes = 5.0,
///             CanaryBakeTimeMinutes = 10.0,
///             CanaryPercent = 10.0,
///         },
///     },
///     LoadBalancerAttachments =
///     {
///         { "app", new Awsx.Ecs.Inputs.ServiceLoadBalancerAttachmentArgs
///         {
///             Application = new Awsx.Ecs.Inputs.ApplicationLoadBalancerAttachmentArgs
///             {
///                 ContainerName = "app",
///                 ContainerPort = 80.0,
///                 ListenerArn = listener.Arn,
///                 Match = new Awsx.Ecs.Inputs.ListenerConditionsArgs
///                 {
///                     Hostnames = new Awsx.Ecs.Inputs.StringMatchArgs
///                     {
///                         Values = new()
///                         {
///                             "api.example.com",
///                         },
///                     },
///                 },
///                 Priority = 50.0,
///                 TargetHealthCheck = new Awsx.Ecs.Inputs.TargetGroupHealthCheckArgs
///                 {
///                     Path = "/health",
///                 },
///             },
///         } },
///     },
///     TaskDefinitionArn = taskDefinition.TaskDefinitionArn,
///     VpcSubnetIds = vpc.PrivateSubnetIds,
/// }, new ComponentResourceOptions
/// {
///     DependsOn =
///     {
///         frontendHttp,
///         frontendEgress,
///     },
/// });
/// ```
///
/// ```java
/// var service = new Service("service", ServiceArgs.builder()
///     .clusterArn(cluster.arn())
///     .deploymentStrategy(ServiceDeploymentStrategyArgs.builder()
///         .canary(CanaryDeploymentStrategyArgs.builder()
///             .bakeTimeMinutes(5.0)
///             .canaryBakeTimeMinutes(10.0)
///             .canaryPercent(10.0)
///             .build())
///         .build())
///     .loadBalancerAttachments(Map.of("app", ServiceLoadBalancerAttachmentArgs.builder()
///         .application(ApplicationLoadBalancerAttachmentArgs.builder()
///             .containerName("app")
///             .containerPort(80.0)
///             .listenerArn(listener.arn())
///             .match(ListenerConditionsArgs.builder()
///                 .hostnames(StringMatchArgs.builder()
///                     .values("api.example.com")
///                     .build().applyValue(___convert -> ___convert))
///                 .build())
///             .priority(50.0)
///             .targetHealthCheck(TargetGroupHealthCheckArgs.builder()
///                 .path("/health")
///                 .build())
///             .build())
///         .build()))
///     .taskDefinitionArn(taskDefinition.taskDefinitionArn())
///     .vpcSubnetIds(vpc.privateSubnetIds())
///     .build(), CustomResourceOptions.builder()
///         .dependsOn(
///             frontendHttp,
///             frontendEgress)
///         .build());
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: awsx:ecs:Service
///     properties:
///       clusterArn: ${cluster.arn}
///       taskDefinitionArn: ${taskDefinition.taskDefinitionArn}
///       vpcSubnetIds: ${vpc.privateSubnetIds}
///       deploymentStrategy:
///         canary:
///           canaryPercent: 10
///           canaryBakeTimeMinutes: 10
///           bakeTimeMinutes: 5
///       loadBalancerAttachments:
///         app:
///           application:
///             containerName: app
///             containerPort: 80
///             targetHealthCheck:
///               path: /health
///             listenerArn: ${listener.arn}
///             priority: 50
///             match:
///               hostnames:
///                 values:
///                   - api.example.com
///     options:
///       dependsOn:
///         - ${frontendHttp}
///         - ${frontendEgress}
/// ```
///
///
///
/// You could also select only specific paths to send to the backend service.
///
///
///
/// ```typescript
/// const service = new awsx.ecs.Service("service", {
///     clusterArn: cluster.arn,
///     deploymentStrategy: {
///         canary: {
///             bakeTimeMinutes: 5,
///             canaryBakeTimeMinutes: 10,
///             canaryPercent: 10,
///         },
///     },
///     loadBalancerAttachments: {
///         app: {
///             application: {
///                 containerName: "app",
///                 containerPort: 80,
///                 listenerArn: listener.arn,
///                 match: {
///                     hostnames: {
///                         values: ["api.example.com"],
///                     },
///                     pathPatterns: {
///                         values: [
///                             "/api/*",
///                             "/admin/*",
///                         ],
///                     },
///                 },
///                 priority: 50,
///                 targetHealthCheck: {
///                     path: "/health",
///                 },
///             },
///         },
///     },
///     taskDefinitionArn: taskDefinition.taskDefinitionArn,
///     vpcSubnetIds: vpc.privateSubnetIds,
/// }, {
///     dependsOn: [
///         frontendHttp,
///         frontendEgress,
///     ],
/// });
/// ```
///
/// ```python
/// service = awsx.ecs.Service("service",
///     cluster_arn=cluster.arn,
///     deployment_strategy={
///         "canary": {
///             "bake_time_minutes": float(5),
///             "canary_bake_time_minutes": float(10),
///             "canary_percent": float(10),
///         },
///     },
///     load_balancer_attachments={
///         "app": {
///             "application": {
///                 "container_name": "app",
///                 "container_port": float(80),
///                 "listener_arn": listener.arn,
///                 "match": {
///                     "hostnames": {
///                         "values": ["api.example.com"],
///                     },
///                     "path_patterns": {
///                         "values": [
///                             "/api/*",
///                             "/admin/*",
///                         ],
///                     },
///                 },
///                 "priority": float(50),
///                 "target_health_check": {
///                     "path": "/health",
///                 },
///             },
///         },
///     },
///     task_definition_arn=task_definition.task_definition_arn,
///     vpc_subnet_ids=vpc.private_subnet_ids,
///     opts = pulumi.ResourceOptions(depends_on=[
///             frontend_http,
///             frontend_egress,
///         ]))
/// ```
///
/// ```go
/// service, err := awsxecs.NewService(ctx, "service", &awsxecs.ServiceArgs{
/// 	ClusterArn: cluster.Arn,
/// 	DeploymentStrategy: ecs.ServiceDeploymentStrategyArgs{
/// 		Canary: ecs.CanaryDeploymentStrategyArgs{
/// 			BakeTimeMinutes:       5,
/// 			CanaryBakeTimeMinutes: 10,
/// 			CanaryPercent:         10,
/// 		},
/// 	},
/// 	LoadBalancerAttachments: map[string]ecs.ServiceLoadBalancerAttachmentArgs{
/// 		"app": ecs.ServiceLoadBalancerAttachmentArgs{
/// 			Application: ecs.ApplicationLoadBalancerAttachmentArgs{
/// 				ContainerName: "app",
/// 				ContainerPort: 80,
/// 				ListenerArn:   listener.Arn,
/// 				Match: ecs.ListenerConditionsArgs{
/// 					Hostnames: ecs.StringMatchArgs{
/// 						Values: []pulumi.String{
/// 							pulumi.String("api.example.com"),
/// 						},
/// 					},
/// 					PathPatterns: ecs.StringMatchArgs{
/// 						Values: []pulumi.String{
/// 							pulumi.String("/api/*"),
/// 							pulumi.String("/admin/*"),
/// 						},
/// 					},
/// 				},
/// 				Priority: 50,
/// 				TargetHealthCheck: ecs.TargetGroupHealthCheckArgs{
/// 					Path: "/health",
/// 				},
/// 			},
/// 		},
/// 	},
/// 	TaskDefinitionArn: taskDefinition.TaskDefinitionArn,
/// 	VpcSubnetIds:      vpc2.PrivateSubnetIds,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// 	frontendHttp,
/// 	frontendEgress,
/// }))
/// if err != nil {
/// 	return err
/// }
/// ```
///
/// ```csharp
/// var service = new Awsx.Ecs.Service("service", new()
/// {
///     ClusterArn = cluster.Arn,
///     DeploymentStrategy = new Awsx.Ecs.Inputs.ServiceDeploymentStrategyArgs
///     {
///         Canary = new Awsx.Ecs.Inputs.CanaryDeploymentStrategyArgs
///         {
///             BakeTimeMinutes = 5.0,
///             CanaryBakeTimeMinutes = 10.0,
///             CanaryPercent = 10.0,
///         },
///     },
///     LoadBalancerAttachments =
///     {
///         { "app", new Awsx.Ecs.Inputs.ServiceLoadBalancerAttachmentArgs
///         {
///             Application = new Awsx.Ecs.Inputs.ApplicationLoadBalancerAttachmentArgs
///             {
///                 ContainerName = "app",
///                 ContainerPort = 80.0,
///                 ListenerArn = listener.Arn,
///                 Match = new Awsx.Ecs.Inputs.ListenerConditionsArgs
///                 {
///                     Hostnames = new Awsx.Ecs.Inputs.StringMatchArgs
///                     {
///                         Values = new()
///                         {
///                             "api.example.com",
///                         },
///                     },
///                     PathPatterns = new Awsx.Ecs.Inputs.StringMatchArgs
///                     {
///                         Values = new()
///                         {
///                             "/api/*",
///                             "/admin/*",
///                         },
///                     },
///                 },
///                 Priority = 50.0,
///                 TargetHealthCheck = new Awsx.Ecs.Inputs.TargetGroupHealthCheckArgs
///                 {
///                     Path = "/health",
///                 },
///             },
///         } },
///     },
///     TaskDefinitionArn = taskDefinition.TaskDefinitionArn,
///     VpcSubnetIds = vpc.PrivateSubnetIds,
/// }, new ComponentResourceOptions
/// {
///     DependsOn =
///     {
///         frontendHttp,
///         frontendEgress,
///     },
/// });
/// ```
///
/// ```java
/// var service = new Service("service", ServiceArgs.builder()
///     .clusterArn(cluster.arn())
///     .deploymentStrategy(ServiceDeploymentStrategyArgs.builder()
///         .canary(CanaryDeploymentStrategyArgs.builder()
///             .bakeTimeMinutes(5.0)
///             .canaryBakeTimeMinutes(10.0)
///             .canaryPercent(10.0)
///             .build())
///         .build())
///     .loadBalancerAttachments(Map.of("app", ServiceLoadBalancerAttachmentArgs.builder()
///         .application(ApplicationLoadBalancerAttachmentArgs.builder()
///             .containerName("app")
///             .containerPort(80.0)
///             .listenerArn(listener.arn())
///             .match(ListenerConditionsArgs.builder()
///                 .hostnames(StringMatchArgs.builder()
///                     .values("api.example.com")
///                     .build().applyValue(___convert -> ___convert))
///                 .pathPatterns(StringMatchArgs.builder()
///                     .values(
///                         "/api/*",
///                         "/admin/*")
///                     .build().applyValue(___convert -> ___convert))
///                 .build())
///             .priority(50.0)
///             .targetHealthCheck(TargetGroupHealthCheckArgs.builder()
///                 .path("/health")
///                 .build())
///             .build())
///         .build()))
///     .taskDefinitionArn(taskDefinition.taskDefinitionArn())
///     .vpcSubnetIds(vpc.privateSubnetIds())
///     .build(), CustomResourceOptions.builder()
///         .dependsOn(
///             frontendHttp,
///             frontendEgress)
///         .build());
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: awsx:ecs:Service
///     properties:
///       clusterArn: ${cluster.arn}
///       taskDefinitionArn: ${taskDefinition.taskDefinitionArn}
///       vpcSubnetIds: ${vpc.privateSubnetIds}
///       deploymentStrategy:
///         canary:
///           canaryPercent: 10
///           canaryBakeTimeMinutes: 10
///           bakeTimeMinutes: 5
///       loadBalancerAttachments:
///         app:
///           application:
///             containerName: app
///             containerPort: 80
///             targetHealthCheck:
///               path: /health
///             listenerArn: ${listener.arn}
///             priority: 50
///             match:
///               hostnames:
///                 values:
///                   - api.example.com
///               pathPatterns:
///                 values:
///                   - '/api/*'
///                   - '/admin/*'
///     options:
///       dependsOn:
///         - ${frontendHttp}
///         - ${frontendEgress}
/// ```
///
///
///
/// This matches requests where the hostname is `api.example.com` **AND** the path matches either `/api/*` **OR** `/admin/*`. Alternatives within a condition are combined with OR, different condition types are combined with AND.
///
/// The rule of thumb here is that if you can express the routing logic in a single attachment then you should.
///
/// ### Multiple attachments to same backend
///
/// You can use separate attachments when the same container and port needs more than one independently evaluated production forwarding rule.
///
/// - Different priorities, hostname/path pairings, or condition lists that cannot fit in one rule
/// - Two listeners directly forward application traffic to the same backend
/// - External and internal clients reach the same application through different load balancers
///
///
///
/// ```typescript
/// const service = new awsx.ecs.Service("service", {
///     clusterArn: cluster.arn,
///     deploymentStrategy: {
///         canary: {
///             bakeTimeMinutes: 5,
///             canaryBakeTimeMinutes: 10,
///             canaryPercent: 10,
///         },
///     },
///     loadBalancerAttachments: {
///         admin: {
///             application: {
///                 containerName: "app",
///                 containerPort: 80,
///                 listenerArn: listener.arn,
///                 match: {
///                     hostnames: {
///                         values: ["admin.example.com"],
///                     },
///                     pathPatterns: {
///                         values: ["/admin/*"],
///                     },
///                 },
///                 priority: 20,
///                 targetHealthCheck: {
///                     path: "/health",
///                 },
///             },
///         },
///         api: {
///             application: {
///                 containerName: "app",
///                 containerPort: 80,
///                 listenerArn: listener.arn,
///                 match: {
///                     hostnames: {
///                         values: ["api.example.com"],
///                     },
///                     pathPatterns: {
///                         values: ["/api/*"],
///                     },
///                 },
///                 priority: 10,
///                 targetHealthCheck: {
///                     path: "/health",
///                 },
///             },
///         },
///     },
///     taskDefinitionArn: taskDefinition.taskDefinitionArn,
///     vpcSubnetIds: vpc.privateSubnetIds,
/// }, {
///     dependsOn: [
///         frontendHttp,
///         frontendEgress,
///     ],
/// });
/// ```
///
/// ```python
/// service = awsx.ecs.Service("service",
///     cluster_arn=cluster.arn,
///     deployment_strategy={
///         "canary": {
///             "bake_time_minutes": float(5),
///             "canary_bake_time_minutes": float(10),
///             "canary_percent": float(10),
///         },
///     },
///     load_balancer_attachments={
///         "admin": {
///             "application": {
///                 "container_name": "app",
///                 "container_port": float(80),
///                 "listener_arn": listener.arn,
///                 "match": {
///                     "hostnames": {
///                         "values": ["admin.example.com"],
///                     },
///                     "path_patterns": {
///                         "values": ["/admin/*"],
///                     },
///                 },
///                 "priority": float(20),
///                 "target_health_check": {
///                     "path": "/health",
///                 },
///             },
///         },
///         "api": {
///             "application": {
///                 "container_name": "app",
///                 "container_port": float(80),
///                 "listener_arn": listener.arn,
///                 "match": {
///                     "hostnames": {
///                         "values": ["api.example.com"],
///                     },
///                     "path_patterns": {
///                         "values": ["/api/*"],
///                     },
///                 },
///                 "priority": float(10),
///                 "target_health_check": {
///                     "path": "/health",
///                 },
///             },
///         },
///     },
///     task_definition_arn=task_definition.task_definition_arn,
///     vpc_subnet_ids=vpc.private_subnet_ids,
///     opts = pulumi.ResourceOptions(depends_on=[
///             frontend_http,
///             frontend_egress,
///         ]))
/// ```
///
/// ```go
/// service, err := awsxecs.NewService(ctx, "service", &awsxecs.ServiceArgs{
/// 	ClusterArn: cluster.Arn,
/// 	DeploymentStrategy: ecs.ServiceDeploymentStrategyArgs{
/// 		Canary: ecs.CanaryDeploymentStrategyArgs{
/// 			BakeTimeMinutes:       5,
/// 			CanaryBakeTimeMinutes: 10,
/// 			CanaryPercent:         10,
/// 		},
/// 	},
/// 	LoadBalancerAttachments: map[string]ecs.ServiceLoadBalancerAttachmentArgs{
/// 		"admin": ecs.ServiceLoadBalancerAttachmentArgs{
/// 			Application: ecs.ApplicationLoadBalancerAttachmentArgs{
/// 				ContainerName: "app",
/// 				ContainerPort: 80,
/// 				ListenerArn:   listener.Arn,
/// 				Match: ecs.ListenerConditionsArgs{
/// 					Hostnames: ecs.StringMatchArgs{
/// 						Values: []pulumi.String{
/// 							pulumi.String("admin.example.com"),
/// 						},
/// 					},
/// 					PathPatterns: ecs.StringMatchArgs{
/// 						Values: []pulumi.String{
/// 							pulumi.String("/admin/*"),
/// 						},
/// 					},
/// 				},
/// 				Priority: 20,
/// 				TargetHealthCheck: ecs.TargetGroupHealthCheckArgs{
/// 					Path: "/health",
/// 				},
/// 			},
/// 		},
/// 		"api": ecs.ServiceLoadBalancerAttachmentArgs{
/// 			Application: ecs.ApplicationLoadBalancerAttachmentArgs{
/// 				ContainerName: "app",
/// 				ContainerPort: 80,
/// 				ListenerArn:   listener.Arn,
/// 				Match: ecs.ListenerConditionsArgs{
/// 					Hostnames: ecs.StringMatchArgs{
/// 						Values: []pulumi.String{
/// 							pulumi.String("api.example.com"),
/// 						},
/// 					},
/// 					PathPatterns: ecs.StringMatchArgs{
/// 						Values: []pulumi.String{
/// 							pulumi.String("/api/*"),
/// 						},
/// 					},
/// 				},
/// 				Priority: 10,
/// 				TargetHealthCheck: ecs.TargetGroupHealthCheckArgs{
/// 					Path: "/health",
/// 				},
/// 			},
/// 		},
/// 	},
/// 	TaskDefinitionArn: taskDefinition.TaskDefinitionArn,
/// 	VpcSubnetIds:      vpc2.PrivateSubnetIds,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// 	frontendHttp,
/// 	frontendEgress,
/// }))
/// if err != nil {
/// 	return err
/// }
/// ```
///
/// ```csharp
/// var service = new Awsx.Ecs.Service("service", new()
/// {
///     ClusterArn = cluster.Arn,
///     DeploymentStrategy = new Awsx.Ecs.Inputs.ServiceDeploymentStrategyArgs
///     {
///         Canary = new Awsx.Ecs.Inputs.CanaryDeploymentStrategyArgs
///         {
///             BakeTimeMinutes = 5.0,
///             CanaryBakeTimeMinutes = 10.0,
///             CanaryPercent = 10.0,
///         },
///     },
///     LoadBalancerAttachments =
///     {
///         { "admin", new Awsx.Ecs.Inputs.ServiceLoadBalancerAttachmentArgs
///         {
///             Application = new Awsx.Ecs.Inputs.ApplicationLoadBalancerAttachmentArgs
///             {
///                 ContainerName = "app",
///                 ContainerPort = 80.0,
///                 ListenerArn = listener.Arn,
///                 Match = new Awsx.Ecs.Inputs.ListenerConditionsArgs
///                 {
///                     Hostnames = new Awsx.Ecs.Inputs.StringMatchArgs
///                     {
///                         Values = new()
///                         {
///                             "admin.example.com",
///                         },
///                     },
///                     PathPatterns = new Awsx.Ecs.Inputs.StringMatchArgs
///                     {
///                         Values = new()
///                         {
///                             "/admin/*",
///                         },
///                     },
///                 },
///                 Priority = 20.0,
///                 TargetHealthCheck = new Awsx.Ecs.Inputs.TargetGroupHealthCheckArgs
///                 {
///                     Path = "/health",
///                 },
///             },
///         } },
///         { "api", new Awsx.Ecs.Inputs.ServiceLoadBalancerAttachmentArgs
///         {
///             Application = new Awsx.Ecs.Inputs.ApplicationLoadBalancerAttachmentArgs
///             {
///                 ContainerName = "app",
///                 ContainerPort = 80.0,
///                 ListenerArn = listener.Arn,
///                 Match = new Awsx.Ecs.Inputs.ListenerConditionsArgs
///                 {
///                     Hostnames = new Awsx.Ecs.Inputs.StringMatchArgs
///                     {
///                         Values = new()
///                         {
///                             "api.example.com",
///                         },
///                     },
///                     PathPatterns = new Awsx.Ecs.Inputs.StringMatchArgs
///                     {
///                         Values = new()
///                         {
///                             "/api/*",
///                         },
///                     },
///                 },
///                 Priority = 10.0,
///                 TargetHealthCheck = new Awsx.Ecs.Inputs.TargetGroupHealthCheckArgs
///                 {
///                     Path = "/health",
///                 },
///             },
///         } },
///     },
///     TaskDefinitionArn = taskDefinition.TaskDefinitionArn,
///     VpcSubnetIds = vpc.PrivateSubnetIds,
/// }, new ComponentResourceOptions
/// {
///     DependsOn =
///     {
///         frontendHttp,
///         frontendEgress,
///     },
/// });
/// ```
///
/// ```java
/// var service = new Service("service", ServiceArgs.builder()
///     .clusterArn(cluster.arn())
///     .deploymentStrategy(ServiceDeploymentStrategyArgs.builder()
///         .canary(CanaryDeploymentStrategyArgs.builder()
///             .bakeTimeMinutes(5.0)
///             .canaryBakeTimeMinutes(10.0)
///             .canaryPercent(10.0)
///             .build())
///         .build())
///     .loadBalancerAttachments(Map.ofEntries(
///         Map.entry("admin", ServiceLoadBalancerAttachmentArgs.builder()
///             .application(ApplicationLoadBalancerAttachmentArgs.builder()
///                 .containerName("app")
///                 .containerPort(80.0)
///                 .listenerArn(listener.arn())
///                 .match(ListenerConditionsArgs.builder()
///                     .hostnames(StringMatchArgs.builder()
///                         .values("admin.example.com")
///                         .build().applyValue(___convert -> ___convert))
///                     .pathPatterns(StringMatchArgs.builder()
///                         .values("/admin/*")
///                         .build().applyValue(___convert -> ___convert))
///                     .build())
///                 .priority(20.0)
///                 .targetHealthCheck(TargetGroupHealthCheckArgs.builder()
///                     .path("/health")
///                     .build())
///                 .build())
///             .build()),
///         Map.entry("api", ServiceLoadBalancerAttachmentArgs.builder()
///             .application(ApplicationLoadBalancerAttachmentArgs.builder()
///                 .containerName("app")
///                 .containerPort(80.0)
///                 .listenerArn(listener.arn())
///                 .match(ListenerConditionsArgs.builder()
///                     .hostnames(StringMatchArgs.builder()
///                         .values("api.example.com")
///                         .build().applyValue(___convert -> ___convert))
///                     .pathPatterns(StringMatchArgs.builder()
///                         .values("/api/*")
///                         .build().applyValue(___convert -> ___convert))
///                     .build())
///                 .priority(10.0)
///                 .targetHealthCheck(TargetGroupHealthCheckArgs.builder()
///                     .path("/health")
///                     .build())
///                 .build())
///             .build())
///     ))
///     .taskDefinitionArn(taskDefinition.taskDefinitionArn())
///     .vpcSubnetIds(vpc.privateSubnetIds())
///     .build(), CustomResourceOptions.builder()
///         .dependsOn(
///             frontendHttp,
///             frontendEgress)
///         .build());
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: awsx:ecs:Service
///     properties:
///       clusterArn: ${cluster.arn}
///       taskDefinitionArn: ${taskDefinition.taskDefinitionArn}
///       vpcSubnetIds: ${vpc.privateSubnetIds}
///       deploymentStrategy:
///         canary:
///           canaryPercent: 10
///           canaryBakeTimeMinutes: 10
///           bakeTimeMinutes: 5
///       loadBalancerAttachments:
///         api:
///           application:
///             containerName: app
///             containerPort: 80
///             targetHealthCheck:
///               path: /health
///             listenerArn: ${listener.arn}
///             priority: 10
///             match:
///               hostnames:
///                 values:
///                   - api.example.com
///               pathPatterns:
///                 values:
///                   - '/api/*'
///         admin:
///           application:
///             containerName: app
///             containerPort: 80
///             targetHealthCheck:
///               path: /health
///             listenerArn: ${listener.arn}
///             priority: 20
///             match:
///               hostnames:
///                 values:
///                   - admin.example.com
///               pathPatterns:
///                 values:
///                   - '/admin/*'
///     options:
///       dependsOn:
///         - ${frontendHttp}
///         - ${frontendEgress}
/// ```
///
///
///
/// These attachments preserve two specific hostname/path pairings.
///
/// - `api.example.com` with `/api/*`
/// - `admin.example.com` with `/admin/*`
///
/// Combining both hostnames and both paths in one rule would also permit the cross-pairings (`api.example.com/admin/*` _and_ `admin.example.com/api/*`). If those pairings must remain distinct, use separate rules and attachments.
///
/// For progressive deployments, each production rule has its own primary/alternate target-group pair. Both attachments follow the same service-wide deployment configuration.
///
/// #### Different listeners or ALBs
///
/// The same pattern works with different `listenerArn` values. For example, maybe you configure a private Load Balancer and a public Load Balancer to route to the same backend. In that case you need two attachments.
///
/// &gt; **Automatic ingress limitation:** When attachments share an application or health-check port, automatic ingress requires them to use the same ALB source security group. Different ALBs with different source groups require `manageIngress: false` and user managed task ingress.
/// &gt;
/// &gt; AWSX declares ingress resources during preview, when ALB security-group IDs may still be unknown. This restriction avoids duplicate rules without creating resources inside an apply.
///
///
///
/// ```typescript
/// const taskGroup = new aws.ec2.SecurityGroup("taskGroup", {vpcId: vpc.vpcId});
/// const privateIngress = new aws.vpc.SecurityGroupIngressRule("privateIngress", {
///     fromPort: 80,
///     ipProtocol: "tcp",
///     referencedSecurityGroupId: privateAlbGroup.id,
///     securityGroupId: taskGroup.id,
///     toPort: 80,
/// });
/// const publicIngress = new aws.vpc.SecurityGroupIngressRule("publicIngress", {
///     fromPort: 80,
///     ipProtocol: "tcp",
///     referencedSecurityGroupId: frontend.id,
///     securityGroupId: taskGroup.id,
///     toPort: 80,
/// });
/// const taskEgress = new aws.vpc.SecurityGroupEgressRule("taskEgress", {
///     cidrIpv4: "0.0.0.0/0",
///     ipProtocol: "-1",
///     securityGroupId: taskGroup.id,
/// });
/// const service = new awsx.ecs.Service("service", {
///     clusterArn: cluster.arn,
///     deploymentStrategy: {
///         canary: {
///             bakeTimeMinutes: 5,
///             canaryBakeTimeMinutes: 10,
///             canaryPercent: 10,
///         },
///     },
///     loadBalancerAttachments: {
///         "private": {
///             application: {
///                 containerName: "app",
///                 containerPort: 80,
///                 listenerArn: privateListener.arn,
///                 match: {
///                     pathPatterns: {
///                         values: ["/*"],
///                     },
///                 },
///                 priority: 50,
///             },
///         },
///         "public": {
///             application: {
///                 containerName: "app",
///                 containerPort: 80,
///                 listenerArn: listener.arn,
///                 match: {
///                     pathPatterns: {
///                         values: ["/*"],
///                     },
///                 },
///                 priority: 50,
///             },
///         },
///     },
///     manageIngress: false,
///     securityGroupIds: [taskGroup.id],
///     taskDefinitionArn: taskDefinition.taskDefinitionArn,
///     vpcSubnetIds: vpc.privateSubnetIds,
/// }, {
///     dependsOn: [
///         taskEgress,
///         privateIngress,
///         publicIngress,
///         frontendHttp,
///         frontendEgress,
///         privateFrontendHttp,
///         privateFrontendEgress,
///     ],
/// });
/// ```
///
/// ```python
/// task_group = aws.ec2.SecurityGroup("taskGroup", vpc_id=vpc.vpc_id)
/// private_ingress = aws.vpc.SecurityGroupIngressRule("privateIngress",
///     from_port=80,
///     ip_protocol="tcp",
///     referenced_security_group_id=private_alb_group.id,
///     security_group_id=task_group.id,
///     to_port=80)
/// public_ingress = aws.vpc.SecurityGroupIngressRule("publicIngress",
///     from_port=80,
///     ip_protocol="tcp",
///     referenced_security_group_id=frontend.id,
///     security_group_id=task_group.id,
///     to_port=80)
/// task_egress = aws.vpc.SecurityGroupEgressRule("taskEgress",
///     cidr_ipv4="0.0.0.0/0",
///     ip_protocol="-1",
///     security_group_id=task_group.id)
/// service = awsx.ecs.Service("service",
///     cluster_arn=cluster.arn,
///     deployment_strategy={
///         "canary": {
///             "bake_time_minutes": float(5),
///             "canary_bake_time_minutes": float(10),
///             "canary_percent": float(10),
///         },
///     },
///     load_balancer_attachments={
///         "private": {
///             "application": {
///                 "container_name": "app",
///                 "container_port": float(80),
///                 "listener_arn": private_listener.arn,
///                 "match": {
///                     "path_patterns": {
///                         "values": ["/*"],
///                     },
///                 },
///                 "priority": float(50),
///             },
///         },
///         "public": {
///             "application": {
///                 "container_name": "app",
///                 "container_port": float(80),
///                 "listener_arn": listener.arn,
///                 "match": {
///                     "path_patterns": {
///                         "values": ["/*"],
///                     },
///                 },
///                 "priority": float(50),
///             },
///         },
///     },
///     manage_ingress=False,
///     security_group_ids=[task_group.id],
///     task_definition_arn=task_definition.task_definition_arn,
///     vpc_subnet_ids=vpc.private_subnet_ids,
///     opts = pulumi.ResourceOptions(depends_on=[
///             task_egress,
///             private_ingress,
///             public_ingress,
///             frontend_http,
///             frontend_egress,
///             private_frontend_http,
///             private_frontend_egress,
///         ]))
/// ```
///
/// ```go
/// taskGroup, err := ec2.NewSecurityGroup(ctx, "taskGroup", &ec2.SecurityGroupArgs{
/// 	VpcId: vpc2.VpcId,
/// })
/// if err != nil {
/// 	return err
/// }
/// privateIngress, err := vpc.NewSecurityGroupIngressRule(ctx, "privateIngress", &vpc.SecurityGroupIngressRuleArgs{
/// 	FromPort:                  pulumi.Int(80),
/// 	IpProtocol:                pulumi.String("tcp"),
/// 	ReferencedSecurityGroupId: privateAlbGroup.ID().ToIDOutput().ToStringOutput(),
/// 	SecurityGroupId:           taskGroup.ID().ToIDOutput().ToStringOutput(),
/// 	ToPort:                    pulumi.Int(80),
/// })
/// if err != nil {
/// 	return err
/// }
/// publicIngress, err := vpc.NewSecurityGroupIngressRule(ctx, "publicIngress", &vpc.SecurityGroupIngressRuleArgs{
/// 	FromPort:                  pulumi.Int(80),
/// 	IpProtocol:                pulumi.String("tcp"),
/// 	ReferencedSecurityGroupId: frontend.ID().ToIDOutput().ToStringOutput(),
/// 	SecurityGroupId:           taskGroup.ID().ToIDOutput().ToStringOutput(),
/// 	ToPort:                    pulumi.Int(80),
/// })
/// if err != nil {
/// 	return err
/// }
/// taskEgress, err := vpc.NewSecurityGroupEgressRule(ctx, "taskEgress", &vpc.SecurityGroupEgressRuleArgs{
/// 	CidrIpv4:        pulumi.String("0.0.0.0/0"),
/// 	IpProtocol:      pulumi.String("-1"),
/// 	SecurityGroupId: taskGroup.ID().ToIDOutput().ToStringOutput(),
/// })
/// if err != nil {
/// 	return err
/// }
/// service, err := awsxecs.NewService(ctx, "service", &awsxecs.ServiceArgs{
/// 	ClusterArn: cluster.Arn,
/// 	DeploymentStrategy: ecs.ServiceDeploymentStrategyArgs{
/// 		Canary: ecs.CanaryDeploymentStrategyArgs{
/// 			BakeTimeMinutes:       5,
/// 			CanaryBakeTimeMinutes: 10,
/// 			CanaryPercent:         10,
/// 		},
/// 	},
/// 	LoadBalancerAttachments: map[string]ecs.ServiceLoadBalancerAttachmentArgs{
/// 		"private": ecs.ServiceLoadBalancerAttachmentArgs{
/// 			Application: ecs.ApplicationLoadBalancerAttachmentArgs{
/// 				ContainerName: "app",
/// 				ContainerPort: 80,
/// 				ListenerArn:   privateListener.Arn,
/// 				Match: ecs.ListenerConditionsArgs{
/// 					PathPatterns: ecs.StringMatchArgs{
/// 						Values: []pulumi.String{
/// 							pulumi.String("/*"),
/// 						},
/// 					},
/// 				},
/// 				Priority: 50,
/// 			},
/// 		},
/// 		"public": ecs.ServiceLoadBalancerAttachmentArgs{
/// 			Application: ecs.ApplicationLoadBalancerAttachmentArgs{
/// 				ContainerName: "app",
/// 				ContainerPort: 80,
/// 				ListenerArn:   listener.Arn,
/// 				Match: ecs.ListenerConditionsArgs{
/// 					PathPatterns: ecs.StringMatchArgs{
/// 						Values: []pulumi.String{
/// 							pulumi.String("/*"),
/// 						},
/// 					},
/// 				},
/// 				Priority: 50,
/// 			},
/// 		},
/// 	},
/// 	ManageIngress: false,
/// 	SecurityGroupIds: []pulumi.String{
/// 		taskGroup.ID().ToIDOutput().ToStringOutput(),
/// 	},
/// 	TaskDefinitionArn: taskDefinition.TaskDefinitionArn,
/// 	VpcSubnetIds:      vpc2.PrivateSubnetIds,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// 	taskEgress,
/// 	privateIngress,
/// 	publicIngress,
/// 	frontendHttp,
/// 	frontendEgress,
/// 	privateFrontendHttp,
/// 	privateFrontendEgress,
/// }))
/// if err != nil {
/// 	return err
/// }
/// ```
///
/// ```csharp
/// var taskGroup = new Aws.Ec2.SecurityGroup("taskGroup", new()
/// {
///     VpcId = vpc.VpcId,
/// });
///
/// var privateIngress = new Aws.Vpc.SecurityGroupIngressRule("privateIngress", new()
/// {
///     FromPort = 80,
///     IpProtocol = "tcp",
///     ReferencedSecurityGroupId = privateAlbGroup.Id,
///     SecurityGroupId = taskGroup.Id,
///     ToPort = 80,
/// });
///
/// var publicIngress = new Aws.Vpc.SecurityGroupIngressRule("publicIngress", new()
/// {
///     FromPort = 80,
///     IpProtocol = "tcp",
///     ReferencedSecurityGroupId = frontend.Id,
///     SecurityGroupId = taskGroup.Id,
///     ToPort = 80,
/// });
///
/// var taskEgress = new Aws.Vpc.SecurityGroupEgressRule("taskEgress", new()
/// {
///     CidrIpv4 = "0.0.0.0/0",
///     IpProtocol = "-1",
///     SecurityGroupId = taskGroup.Id,
/// });
///
/// var service = new Awsx.Ecs.Service("service", new()
/// {
///     ClusterArn = cluster.Arn,
///     DeploymentStrategy = new Awsx.Ecs.Inputs.ServiceDeploymentStrategyArgs
///     {
///         Canary = new Awsx.Ecs.Inputs.CanaryDeploymentStrategyArgs
///         {
///             BakeTimeMinutes = 5.0,
///             CanaryBakeTimeMinutes = 10.0,
///             CanaryPercent = 10.0,
///         },
///     },
///     LoadBalancerAttachments =
///     {
///         { "private", new Awsx.Ecs.Inputs.ServiceLoadBalancerAttachmentArgs
///         {
///             Application = new Awsx.Ecs.Inputs.ApplicationLoadBalancerAttachmentArgs
///             {
///                 ContainerName = "app",
///                 ContainerPort = 80.0,
///                 ListenerArn = privateListener.Arn,
///                 Match = new Awsx.Ecs.Inputs.ListenerConditionsArgs
///                 {
///                     PathPatterns = new Awsx.Ecs.Inputs.StringMatchArgs
///                     {
///                         Values = new()
///                         {
///                             "/*",
///                         },
///                     },
///                 },
///                 Priority = 50.0,
///             },
///         } },
///         { "public", new Awsx.Ecs.Inputs.ServiceLoadBalancerAttachmentArgs
///         {
///             Application = new Awsx.Ecs.Inputs.ApplicationLoadBalancerAttachmentArgs
///             {
///                 ContainerName = "app",
///                 ContainerPort = 80.0,
///                 ListenerArn = listener.Arn,
///                 Match = new Awsx.Ecs.Inputs.ListenerConditionsArgs
///                 {
///                     PathPatterns = new Awsx.Ecs.Inputs.StringMatchArgs
///                     {
///                         Values = new()
///                         {
///                             "/*",
///                         },
///                     },
///                 },
///                 Priority = 50.0,
///             },
///         } },
///     },
///     ManageIngress = false,
///     SecurityGroupIds = new()
///     {
///         taskGroup.Id,
///     },
///     TaskDefinitionArn = taskDefinition.TaskDefinitionArn,
///     VpcSubnetIds = vpc.PrivateSubnetIds,
/// }, new ComponentResourceOptions
/// {
///     DependsOn =
///     {
///         taskEgress,
///         privateIngress,
///         publicIngress,
///         frontendHttp,
///         frontendEgress,
///         privateFrontendHttp,
///         privateFrontendEgress,
///     },
/// });
/// ```
///
/// ```java
/// var taskGroup = new SecurityGroup("taskGroup", SecurityGroupArgs.builder()
///     .vpcId(vpc.vpcId())
///     .build());
///
/// var privateIngress = new SecurityGroupIngressRule("privateIngress", SecurityGroupIngressRuleArgs.builder()
///     .fromPort(80)
///     .ipProtocol("tcp")
///     .referencedSecurityGroupId(privateAlbGroup.id())
///     .securityGroupId(taskGroup.id())
///     .toPort(80)
///     .build());
///
/// var publicIngress = new SecurityGroupIngressRule("publicIngress", SecurityGroupIngressRuleArgs.builder()
///     .fromPort(80)
///     .ipProtocol("tcp")
///     .referencedSecurityGroupId(frontend.id())
///     .securityGroupId(taskGroup.id())
///     .toPort(80)
///     .build());
///
/// var taskEgress = new SecurityGroupEgressRule("taskEgress", SecurityGroupEgressRuleArgs.builder()
///     .cidrIpv4("0.0.0.0/0")
///     .ipProtocol("-1")
///     .securityGroupId(taskGroup.id())
///     .build());
///
/// var service = new Service("service", ServiceArgs.builder()
///     .clusterArn(cluster.arn())
///     .deploymentStrategy(ServiceDeploymentStrategyArgs.builder()
///         .canary(CanaryDeploymentStrategyArgs.builder()
///             .bakeTimeMinutes(5.0)
///             .canaryBakeTimeMinutes(10.0)
///             .canaryPercent(10.0)
///             .build())
///         .build())
///     .loadBalancerAttachments(Map.ofEntries(
///         Map.entry("private", ServiceLoadBalancerAttachmentArgs.builder()
///             .application(ApplicationLoadBalancerAttachmentArgs.builder()
///                 .containerName("app")
///                 .containerPort(80.0)
///                 .listenerArn(privateListener.arn())
///                 .match(ListenerConditionsArgs.builder()
///                     .pathPatterns(StringMatchArgs.builder()
///                         .values("/*")
///                         .build().applyValue(___convert -> ___convert))
///                     .build())
///                 .priority(50.0)
///                 .build())
///             .build()),
///         Map.entry("public", ServiceLoadBalancerAttachmentArgs.builder()
///             .application(ApplicationLoadBalancerAttachmentArgs.builder()
///                 .containerName("app")
///                 .containerPort(80.0)
///                 .listenerArn(listener.arn())
///                 .match(ListenerConditionsArgs.builder()
///                     .pathPatterns(StringMatchArgs.builder()
///                         .values("/*")
///                         .build().applyValue(___convert -> ___convert))
///                     .build())
///                 .priority(50.0)
///                 .build())
///             .build())
///     ))
///     .manageIngress(false)
///     .securityGroupIds(taskGroup.id())
///     .taskDefinitionArn(taskDefinition.taskDefinitionArn())
///     .vpcSubnetIds(vpc.privateSubnetIds())
///     .build(), CustomResourceOptions.builder()
///         .dependsOn(
///             taskEgress,
///             privateIngress,
///             publicIngress,
///             frontendHttp,
///             frontendEgress,
///             privateFrontendHttp,
///             privateFrontendEgress)
///         .build());
/// ```
///
/// ```yaml
/// resources:
///   taskGroup:
///     type: aws:ec2/securityGroup:SecurityGroup
///     properties:
///       vpcId: ${vpc.vpcId}
///   taskEgress:
///     type: aws:vpc/securityGroupEgressRule:SecurityGroupEgressRule
///     properties:
///       securityGroupId: ${taskGroup.id}
///       ipProtocol: -1
///       cidrIpv4: 0.0.0.0/0
///   privateIngress:
///     type: aws:vpc/securityGroupIngressRule:SecurityGroupIngressRule
///     properties:
///       securityGroupId: ${taskGroup.id}
///       referencedSecurityGroupId: ${privateAlbGroup.id}
///       ipProtocol: tcp
///       fromPort: 80
///       toPort: 80
///   publicIngress:
///     type: aws:vpc/securityGroupIngressRule:SecurityGroupIngressRule
///     properties:
///       securityGroupId: ${taskGroup.id}
///       referencedSecurityGroupId: ${frontend.id}
///       ipProtocol: tcp
///       fromPort: 80
///       toPort: 80
///   service:
///     type: awsx:ecs:Service
///     properties:
///       clusterArn: ${cluster.arn}
///       taskDefinitionArn: ${taskDefinition.taskDefinitionArn}
///       vpcSubnetIds: ${vpc.privateSubnetIds}
///       deploymentStrategy:
///         canary:
///           canaryPercent: 10
///           canaryBakeTimeMinutes: 10
///           bakeTimeMinutes: 5
///       manageIngress: false
///       securityGroupIds:
///         - ${taskGroup.id}
///       loadBalancerAttachments:
///         public:
///           application:
///             containerName: app
///             containerPort: 80
///             listenerArn: ${listener.arn}
///             priority: 50
///             match:
///               pathPatterns:
///                 values:
///                   - '/*'
///         private:
///           application:
///             containerName: app
///             containerPort: 80
///             listenerArn: ${privateListener.arn}
///             priority: 50
///             match:
///               pathPatterns:
///                 values:
///                   - '/*'
///     options:
///       dependsOn:
///         - ${taskEgress}
///         - ${privateIngress}
///         - ${publicIngress}
///         - ${frontendHttp}
///         - ${frontendEgress}
///         - ${privateFrontendHttp}
///         - ${privateFrontendEgress}
/// ```
///
///
///
/// If health checks use a separate port, allow that port from both ALB security groups too.
///
/// ### Multiple attachments to different backends
///
/// You can use separate attachments when different containers or ports in a single task receive different traffic.
///
/// - A UI container and an API container run together in a single task
/// - One container serves multiple load-balanced ports
///
///
///
/// ```typescript
/// const service = new awsx.ecs.Service("service", {
///     clusterArn: cluster.arn,
///     deploymentStrategy: {
///         canary: {
///             bakeTimeMinutes: 5,
///             canaryBakeTimeMinutes: 10,
///             canaryPercent: 10,
///         },
///     },
///     loadBalancerAttachments: {
///         api: {
///             application: {
///                 containerName: "api",
///                 containerPort: 8080,
///                 listenerArn: listener.arn,
///                 match: {
///                     hostnames: {
///                         values: ["api.example.com"],
///                     },
///                 },
///                 priority: 20,
///                 targetHealthCheck: {
///                     path: "/health",
///                 },
///             },
///         },
///         ui: {
///             application: {
///                 containerName: "ui",
///                 containerPort: 3000,
///                 listenerArn: listener.arn,
///                 match: {
///                     hostnames: {
///                         values: ["www.example.com"],
///                     },
///                 },
///                 priority: 10,
///                 targetHealthCheck: {
///                     path: "/health",
///                 },
///             },
///         },
///     },
///     taskDefinitionArn: uiApiTask.taskDefinitionArn,
///     vpcSubnetIds: vpc.privateSubnetIds,
/// }, {
///     dependsOn: [
///         frontendHttp,
///         frontendEgress,
///         frontendUiEgress,
///         frontendApiEgress,
///     ],
/// });
/// ```
///
/// ```python
/// service = awsx.ecs.Service("service",
///     cluster_arn=cluster.arn,
///     deployment_strategy={
///         "canary": {
///             "bake_time_minutes": float(5),
///             "canary_bake_time_minutes": float(10),
///             "canary_percent": float(10),
///         },
///     },
///     load_balancer_attachments={
///         "api": {
///             "application": {
///                 "container_name": "api",
///                 "container_port": float(8080),
///                 "listener_arn": listener.arn,
///                 "match": {
///                     "hostnames": {
///                         "values": ["api.example.com"],
///                     },
///                 },
///                 "priority": float(20),
///                 "target_health_check": {
///                     "path": "/health",
///                 },
///             },
///         },
///         "ui": {
///             "application": {
///                 "container_name": "ui",
///                 "container_port": float(3000),
///                 "listener_arn": listener.arn,
///                 "match": {
///                     "hostnames": {
///                         "values": ["www.example.com"],
///                     },
///                 },
///                 "priority": float(10),
///                 "target_health_check": {
///                     "path": "/health",
///                 },
///             },
///         },
///     },
///     task_definition_arn=ui_api_task.task_definition_arn,
///     vpc_subnet_ids=vpc.private_subnet_ids,
///     opts = pulumi.ResourceOptions(depends_on=[
///             frontend_http,
///             frontend_egress,
///             frontend_ui_egress,
///             frontend_api_egress,
///         ]))
/// ```
///
/// ```go
/// service, err := awsxecs.NewService(ctx, "service", &awsxecs.ServiceArgs{
/// 	ClusterArn: cluster.Arn,
/// 	DeploymentStrategy: ecs.ServiceDeploymentStrategyArgs{
/// 		Canary: ecs.CanaryDeploymentStrategyArgs{
/// 			BakeTimeMinutes:       5,
/// 			CanaryBakeTimeMinutes: 10,
/// 			CanaryPercent:         10,
/// 		},
/// 	},
/// 	LoadBalancerAttachments: map[string]ecs.ServiceLoadBalancerAttachmentArgs{
/// 		"api": ecs.ServiceLoadBalancerAttachmentArgs{
/// 			Application: ecs.ApplicationLoadBalancerAttachmentArgs{
/// 				ContainerName: "api",
/// 				ContainerPort: 8080,
/// 				ListenerArn:   listener.Arn,
/// 				Match: ecs.ListenerConditionsArgs{
/// 					Hostnames: ecs.StringMatchArgs{
/// 						Values: []pulumi.String{
/// 							pulumi.String("api.example.com"),
/// 						},
/// 					},
/// 				},
/// 				Priority: 20,
/// 				TargetHealthCheck: ecs.TargetGroupHealthCheckArgs{
/// 					Path: "/health",
/// 				},
/// 			},
/// 		},
/// 		"ui": ecs.ServiceLoadBalancerAttachmentArgs{
/// 			Application: ecs.ApplicationLoadBalancerAttachmentArgs{
/// 				ContainerName: "ui",
/// 				ContainerPort: 3000,
/// 				ListenerArn:   listener.Arn,
/// 				Match: ecs.ListenerConditionsArgs{
/// 					Hostnames: ecs.StringMatchArgs{
/// 						Values: []pulumi.String{
/// 							pulumi.String("www.example.com"),
/// 						},
/// 					},
/// 				},
/// 				Priority: 10,
/// 				TargetHealthCheck: ecs.TargetGroupHealthCheckArgs{
/// 					Path: "/health",
/// 				},
/// 			},
/// 		},
/// 	},
/// 	TaskDefinitionArn: uiApiTask.TaskDefinitionArn,
/// 	VpcSubnetIds:      vpc2.PrivateSubnetIds,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// 	frontendHttp,
/// 	frontendEgress,
/// 	frontendUiEgress,
/// 	frontendApiEgress,
/// }))
/// if err != nil {
/// 	return err
/// }
/// ```
///
/// ```csharp
/// var service = new Awsx.Ecs.Service("service", new()
/// {
///     ClusterArn = cluster.Arn,
///     DeploymentStrategy = new Awsx.Ecs.Inputs.ServiceDeploymentStrategyArgs
///     {
///         Canary = new Awsx.Ecs.Inputs.CanaryDeploymentStrategyArgs
///         {
///             BakeTimeMinutes = 5.0,
///             CanaryBakeTimeMinutes = 10.0,
///             CanaryPercent = 10.0,
///         },
///     },
///     LoadBalancerAttachments =
///     {
///         { "api", new Awsx.Ecs.Inputs.ServiceLoadBalancerAttachmentArgs
///         {
///             Application = new Awsx.Ecs.Inputs.ApplicationLoadBalancerAttachmentArgs
///             {
///                 ContainerName = "api",
///                 ContainerPort = 8080.0,
///                 ListenerArn = listener.Arn,
///                 Match = new Awsx.Ecs.Inputs.ListenerConditionsArgs
///                 {
///                     Hostnames = new Awsx.Ecs.Inputs.StringMatchArgs
///                     {
///                         Values = new()
///                         {
///                             "api.example.com",
///                         },
///                     },
///                 },
///                 Priority = 20.0,
///                 TargetHealthCheck = new Awsx.Ecs.Inputs.TargetGroupHealthCheckArgs
///                 {
///                     Path = "/health",
///                 },
///             },
///         } },
///         { "ui", new Awsx.Ecs.Inputs.ServiceLoadBalancerAttachmentArgs
///         {
///             Application = new Awsx.Ecs.Inputs.ApplicationLoadBalancerAttachmentArgs
///             {
///                 ContainerName = "ui",
///                 ContainerPort = 3000.0,
///                 ListenerArn = listener.Arn,
///                 Match = new Awsx.Ecs.Inputs.ListenerConditionsArgs
///                 {
///                     Hostnames = new Awsx.Ecs.Inputs.StringMatchArgs
///                     {
///                         Values = new()
///                         {
///                             "www.example.com",
///                         },
///                     },
///                 },
///                 Priority = 10.0,
///                 TargetHealthCheck = new Awsx.Ecs.Inputs.TargetGroupHealthCheckArgs
///                 {
///                     Path = "/health",
///                 },
///             },
///         } },
///     },
///     TaskDefinitionArn = uiApiTask.TaskDefinitionArn,
///     VpcSubnetIds = vpc.PrivateSubnetIds,
/// }, new ComponentResourceOptions
/// {
///     DependsOn =
///     {
///         frontendHttp,
///         frontendEgress,
///         frontendUiEgress,
///         frontendApiEgress,
///     },
/// });
/// ```
///
/// ```java
/// var service = new Service("service", ServiceArgs.builder()
///     .clusterArn(cluster.arn())
///     .deploymentStrategy(ServiceDeploymentStrategyArgs.builder()
///         .canary(CanaryDeploymentStrategyArgs.builder()
///             .bakeTimeMinutes(5.0)
///             .canaryBakeTimeMinutes(10.0)
///             .canaryPercent(10.0)
///             .build())
///         .build())
///     .loadBalancerAttachments(Map.ofEntries(
///         Map.entry("api", ServiceLoadBalancerAttachmentArgs.builder()
///             .application(ApplicationLoadBalancerAttachmentArgs.builder()
///                 .containerName("api")
///                 .containerPort(8080.0)
///                 .listenerArn(listener.arn())
///                 .match(ListenerConditionsArgs.builder()
///                     .hostnames(StringMatchArgs.builder()
///                         .values("api.example.com")
///                         .build().applyValue(___convert -> ___convert))
///                     .build())
///                 .priority(20.0)
///                 .targetHealthCheck(TargetGroupHealthCheckArgs.builder()
///                     .path("/health")
///                     .build())
///                 .build())
///             .build()),
///         Map.entry("ui", ServiceLoadBalancerAttachmentArgs.builder()
///             .application(ApplicationLoadBalancerAttachmentArgs.builder()
///                 .containerName("ui")
///                 .containerPort(3000.0)
///                 .listenerArn(listener.arn())
///                 .match(ListenerConditionsArgs.builder()
///                     .hostnames(StringMatchArgs.builder()
///                         .values("www.example.com")
///                         .build().applyValue(___convert -> ___convert))
///                     .build())
///                 .priority(10.0)
///                 .targetHealthCheck(TargetGroupHealthCheckArgs.builder()
///                     .path("/health")
///                     .build())
///                 .build())
///             .build())
///     ))
///     .taskDefinitionArn(uiApiTask.taskDefinitionArn())
///     .vpcSubnetIds(vpc.privateSubnetIds())
///     .build(), CustomResourceOptions.builder()
///         .dependsOn(
///             frontendHttp,
///             frontendEgress,
///             frontendUiEgress,
///             frontendApiEgress)
///         .build());
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: awsx:ecs:Service
///     properties:
///       clusterArn: ${cluster.arn}
///       taskDefinitionArn: ${uiApiTask.taskDefinitionArn}
///       vpcSubnetIds: ${vpc.privateSubnetIds}
///       deploymentStrategy:
///         canary:
///           canaryPercent: 10
///           canaryBakeTimeMinutes: 10
///           bakeTimeMinutes: 5
///       loadBalancerAttachments:
///         ui:
///           application:
///             containerName: ui
///             containerPort: 3000
///             targetHealthCheck:
///               path: /health
///             listenerArn: ${listener.arn}
///             priority: 10
///             match:
///               hostnames:
///                 values:
///                   - www.example.com
///         api:
///           application:
///             containerName: api
///             containerPort: 8080
///             targetHealthCheck:
///               path: /health
///             listenerArn: ${listener.arn}
///             priority: 20
///             match:
///               hostnames:
///                 values:
///                   - api.example.com
///     options:
///       dependsOn:
///         - ${frontendHttp}
///         - ${frontendEgress}
///         - ${frontendUiEgress}
///         - ${frontendApiEgress}
/// ```
///
///
///
/// ### Deployment strategies
///
/// Deployment strategies control how ECS replaces tasks and shifts traffic to a new service revision:
///
/// 1. **Rolling (default)** replaces tasks within the service.
/// 2. **Blue/green** shifts production traffic to the new revision once it is ready.
/// 3. **Linear** shifts production traffic in increments.
/// 4. **Canary** shifts an initial percentage of production traffic, then shifts the remainder after an observation period.
///
/// To select a strategy explicitly, configure exactly one of `rolling`, `blueGreen`, `linear`, or `canary` in `deploymentStrategy`. For blue/green, linear, and canary deployments, each load balancer attachment uses two target groups. ECS manages the forwarding weights during deployment. AWSX ignores changes to those weights so Pulumi does not reset the current traffic allocation. Make sure to `refresh` the stack before subsequent updates to retain ECS's current allocation in state.
///
/// #### Rolling deployments
///
/// Rolling deployments replace existing tasks with tasks using the new revision. The basic example above uses rolling deployments. To configure rolling deployment settings explicitly:
///
///
///
/// ```typescript
/// const service = new awsx.ecs.Service("service", {
///     clusterArn: cluster.arn,
///     deploymentStrategy: {
///         rolling: {
///             failureAction: awsx.ecs.DeploymentFailureAction.ROLLBACK,
///         },
///     },
///     loadBalancerAttachments: {
///         app: {
///             application: {
///                 containerName: "app",
///                 containerPort: 80,
///                 listenerArn: listener.arn,
///                 priority: 10,
///             },
///         },
///     },
///     taskDefinitionArn: taskDefinition.taskDefinitionArn,
///     vpcSubnetIds: vpc.privateSubnetIds,
/// }, {
///     dependsOn: [
///         frontendHttp,
///         frontendEgress,
///     ],
/// });
/// ```
///
/// ```python
/// service = awsx.ecs.Service("service",
///     cluster_arn=cluster.arn,
///     deployment_strategy={
///         "rolling": {
///             "failure_action": awsx.ecs.DeploymentFailureAction.ROLLBACK,
///         },
///     },
///     load_balancer_attachments={
///         "app": {
///             "application": {
///                 "container_name": "app",
///                 "container_port": float(80),
///                 "listener_arn": listener.arn,
///                 "priority": float(10),
///             },
///         },
///     },
///     task_definition_arn=task_definition.task_definition_arn,
///     vpc_subnet_ids=vpc.private_subnet_ids,
///     opts = pulumi.ResourceOptions(depends_on=[
///             frontend_http,
///             frontend_egress,
///         ]))
/// ```
///
/// ```go
/// service, err := awsxecs.NewService(ctx, "service", &awsxecs.ServiceArgs{
/// 	ClusterArn: cluster.Arn,
/// 	DeploymentStrategy: ecs.ServiceDeploymentStrategyArgs{
/// 		Rolling: ecs.RollingDeploymentStrategyArgs{
/// 			FailureAction: awsxecs.DeploymentFailureActionROLLBACK,
/// 		},
/// 	},
/// 	LoadBalancerAttachments: map[string]ecs.ServiceLoadBalancerAttachmentArgs{
/// 		"app": ecs.ServiceLoadBalancerAttachmentArgs{
/// 			Application: ecs.ApplicationLoadBalancerAttachmentArgs{
/// 				ContainerName: "app",
/// 				ContainerPort: 80,
/// 				ListenerArn:   listener.Arn,
/// 				Priority:      10,
/// 			},
/// 		},
/// 	},
/// 	TaskDefinitionArn: taskDefinition.TaskDefinitionArn,
/// 	VpcSubnetIds:      vpc2.PrivateSubnetIds,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// 	frontendHttp,
/// 	frontendEgress,
/// }))
/// if err != nil {
/// 	return err
/// }
/// ```
///
/// ```csharp
/// var service = new Awsx.Ecs.Service("service", new()
/// {
///     ClusterArn = cluster.Arn,
///     DeploymentStrategy = new Awsx.Ecs.Inputs.ServiceDeploymentStrategyArgs
///     {
///         Rolling = new Awsx.Ecs.Inputs.RollingDeploymentStrategyArgs
///         {
///             FailureAction = Awsx.Ecs.DeploymentFailureAction.ROLLBACK,
///         },
///     },
///     LoadBalancerAttachments =
///     {
///         { "app", new Awsx.Ecs.Inputs.ServiceLoadBalancerAttachmentArgs
///         {
///             Application = new Awsx.Ecs.Inputs.ApplicationLoadBalancerAttachmentArgs
///             {
///                 ContainerName = "app",
///                 ContainerPort = 80.0,
///                 ListenerArn = listener.Arn,
///                 Priority = 10.0,
///             },
///         } },
///     },
///     TaskDefinitionArn = taskDefinition.TaskDefinitionArn,
///     VpcSubnetIds = vpc.PrivateSubnetIds,
/// }, new ComponentResourceOptions
/// {
///     DependsOn =
///     {
///         frontendHttp,
///         frontendEgress,
///     },
/// });
/// ```
///
/// ```java
/// var service = new Service("service", ServiceArgs.builder()
///     .clusterArn(cluster.arn())
///     .deploymentStrategy(ServiceDeploymentStrategyArgs.builder()
///         .rolling(RollingDeploymentStrategyArgs.builder()
///             .failureAction("ROLLBACK")
///             .build())
///         .build())
///     .loadBalancerAttachments(Map.of("app", ServiceLoadBalancerAttachmentArgs.builder()
///         .application(ApplicationLoadBalancerAttachmentArgs.builder()
///             .containerName("app")
///             .containerPort(80.0)
///             .listenerArn(listener.arn())
///             .priority(10.0)
///             .build())
///         .build()))
///     .taskDefinitionArn(taskDefinition.taskDefinitionArn())
///     .vpcSubnetIds(vpc.privateSubnetIds())
///     .build(), CustomResourceOptions.builder()
///         .dependsOn(
///             frontendHttp,
///             frontendEgress)
///         .build());
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: awsx:ecs:Service
///     properties:
///       clusterArn: ${cluster.arn}
///       taskDefinitionArn: ${taskDefinition.taskDefinitionArn}
///       vpcSubnetIds: ${vpc.privateSubnetIds}
///       loadBalancerAttachments:
///         app:
///           application:
///             containerName: app
///             containerPort: 80
///             listenerArn: ${listener.arn}
///             priority: 10
///       deploymentStrategy:
///         rolling:
///           failureAction: ROLLBACK
///     options:
///       dependsOn:
///         - ${frontendHttp}
///         - ${frontendEgress}
/// ```
///
///
///
/// By default, a failed deployment rolls back to the last successfully completed deployment when one is available.
///
/// #### Blue/green deployments
///
/// Blue/green deployments start a new service revision before shifting all production traffic to it.
///
///
///
/// ```typescript
/// const service = new awsx.ecs.Service("service", {
///     clusterArn: cluster.arn,
///     deploymentStrategy: {
///         blueGreen: {
///             bakeTimeMinutes: 5,
///         },
///     },
///     loadBalancerAttachments: {
///         app: {
///             application: {
///                 containerName: "app",
///                 containerPort: 80,
///                 listenerArn: listener.arn,
///                 priority: 10,
///             },
///         },
///     },
///     taskDefinitionArn: taskDefinition.taskDefinitionArn,
///     vpcSubnetIds: vpc.privateSubnetIds,
/// }, {
///     dependsOn: [
///         frontendHttp,
///         frontendEgress,
///     ],
/// });
/// ```
///
/// ```python
/// service = awsx.ecs.Service("service",
///     cluster_arn=cluster.arn,
///     deployment_strategy={
///         "blue_green": {
///             "bake_time_minutes": float(5),
///         },
///     },
///     load_balancer_attachments={
///         "app": {
///             "application": {
///                 "container_name": "app",
///                 "container_port": float(80),
///                 "listener_arn": listener.arn,
///                 "priority": float(10),
///             },
///         },
///     },
///     task_definition_arn=task_definition.task_definition_arn,
///     vpc_subnet_ids=vpc.private_subnet_ids,
///     opts = pulumi.ResourceOptions(depends_on=[
///             frontend_http,
///             frontend_egress,
///         ]))
/// ```
///
/// ```go
/// service, err := awsxecs.NewService(ctx, "service", &awsxecs.ServiceArgs{
/// 	ClusterArn: cluster.Arn,
/// 	DeploymentStrategy: ecs.ServiceDeploymentStrategyArgs{
/// 		BlueGreen: ecs.BlueGreenDeploymentStrategyArgs{
/// 			BakeTimeMinutes: 5,
/// 		},
/// 	},
/// 	LoadBalancerAttachments: map[string]ecs.ServiceLoadBalancerAttachmentArgs{
/// 		"app": ecs.ServiceLoadBalancerAttachmentArgs{
/// 			Application: ecs.ApplicationLoadBalancerAttachmentArgs{
/// 				ContainerName: "app",
/// 				ContainerPort: 80,
/// 				ListenerArn:   listener.Arn,
/// 				Priority:      10,
/// 			},
/// 		},
/// 	},
/// 	TaskDefinitionArn: taskDefinition.TaskDefinitionArn,
/// 	VpcSubnetIds:      vpc2.PrivateSubnetIds,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// 	frontendHttp,
/// 	frontendEgress,
/// }))
/// if err != nil {
/// 	return err
/// }
/// ```
///
/// ```csharp
/// var service = new Awsx.Ecs.Service("service", new()
/// {
///     ClusterArn = cluster.Arn,
///     DeploymentStrategy = new Awsx.Ecs.Inputs.ServiceDeploymentStrategyArgs
///     {
///         BlueGreen = new Awsx.Ecs.Inputs.BlueGreenDeploymentStrategyArgs
///         {
///             BakeTimeMinutes = 5.0,
///         },
///     },
///     LoadBalancerAttachments =
///     {
///         { "app", new Awsx.Ecs.Inputs.ServiceLoadBalancerAttachmentArgs
///         {
///             Application = new Awsx.Ecs.Inputs.ApplicationLoadBalancerAttachmentArgs
///             {
///                 ContainerName = "app",
///                 ContainerPort = 80.0,
///                 ListenerArn = listener.Arn,
///                 Priority = 10.0,
///             },
///         } },
///     },
///     TaskDefinitionArn = taskDefinition.TaskDefinitionArn,
///     VpcSubnetIds = vpc.PrivateSubnetIds,
/// }, new ComponentResourceOptions
/// {
///     DependsOn =
///     {
///         frontendHttp,
///         frontendEgress,
///     },
/// });
/// ```
///
/// ```java
/// var service = new Service("service", ServiceArgs.builder()
///     .clusterArn(cluster.arn())
///     .deploymentStrategy(ServiceDeploymentStrategyArgs.builder()
///         .blueGreen(BlueGreenDeploymentStrategyArgs.builder()
///             .bakeTimeMinutes(5.0)
///             .build())
///         .build())
///     .loadBalancerAttachments(Map.of("app", ServiceLoadBalancerAttachmentArgs.builder()
///         .application(ApplicationLoadBalancerAttachmentArgs.builder()
///             .containerName("app")
///             .containerPort(80.0)
///             .listenerArn(listener.arn())
///             .priority(10.0)
///             .build())
///         .build()))
///     .taskDefinitionArn(taskDefinition.taskDefinitionArn())
///     .vpcSubnetIds(vpc.privateSubnetIds())
///     .build(), CustomResourceOptions.builder()
///         .dependsOn(
///             frontendHttp,
///             frontendEgress)
///         .build());
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: awsx:ecs:Service
///     properties:
///       clusterArn: ${cluster.arn}
///       taskDefinitionArn: ${taskDefinition.taskDefinitionArn}
///       vpcSubnetIds: ${vpc.privateSubnetIds}
///       loadBalancerAttachments:
///         app:
///           application:
///             containerName: app
///             containerPort: 80
///             listenerArn: ${listener.arn}
///             priority: 10
///       deploymentStrategy:
///         blueGreen:
///           bakeTimeMinutes: 5
///     options:
///       dependsOn:
///         - ${frontendHttp}
///         - ${frontendEgress}
/// ```
///
///
///
/// `bakeTimeMinutes` is the amount of time ECS keeps the previous revision running after production traffic is shifted to the new revision. After the `bakeTimeMinutes` is up, the old revision is removed. See [the AWS docs for more details](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-type-blue-green.html).
///
/// #### Linear deployments
///
/// Linear deployments shift production traffic to the new revision in increments. This example shifts traffic in 20% increments, with a 3-minute observation period (`stepBakeTimeMinutes`) between shifts:
///
///
///
/// ```typescript
/// const service = new awsx.ecs.Service("service", {
///     clusterArn: cluster.arn,
///     deploymentStrategy: {
///         linear: {
///             bakeTimeMinutes: 5,
///             stepBakeTimeMinutes: 3,
///             stepPercent: 20,
///         },
///     },
///     loadBalancerAttachments: {
///         app: {
///             application: {
///                 containerName: "app",
///                 containerPort: 80,
///                 listenerArn: listener.arn,
///                 priority: 10,
///             },
///         },
///     },
///     taskDefinitionArn: taskDefinition.taskDefinitionArn,
///     vpcSubnetIds: vpc.privateSubnetIds,
/// }, {
///     dependsOn: [
///         frontendHttp,
///         frontendEgress,
///     ],
/// });
/// ```
///
/// ```python
/// service = awsx.ecs.Service("service",
///     cluster_arn=cluster.arn,
///     deployment_strategy={
///         "linear": {
///             "bake_time_minutes": float(5),
///             "step_bake_time_minutes": float(3),
///             "step_percent": float(20),
///         },
///     },
///     load_balancer_attachments={
///         "app": {
///             "application": {
///                 "container_name": "app",
///                 "container_port": float(80),
///                 "listener_arn": listener.arn,
///                 "priority": float(10),
///             },
///         },
///     },
///     task_definition_arn=task_definition.task_definition_arn,
///     vpc_subnet_ids=vpc.private_subnet_ids,
///     opts = pulumi.ResourceOptions(depends_on=[
///             frontend_http,
///             frontend_egress,
///         ]))
/// ```
///
/// ```go
/// service, err := awsxecs.NewService(ctx, "service", &awsxecs.ServiceArgs{
/// 	ClusterArn: cluster.Arn,
/// 	DeploymentStrategy: ecs.ServiceDeploymentStrategyArgs{
/// 		Linear: ecs.LinearDeploymentStrategyArgs{
/// 			BakeTimeMinutes:     5,
/// 			StepBakeTimeMinutes: 3,
/// 			StepPercent:         20,
/// 		},
/// 	},
/// 	LoadBalancerAttachments: map[string]ecs.ServiceLoadBalancerAttachmentArgs{
/// 		"app": ecs.ServiceLoadBalancerAttachmentArgs{
/// 			Application: ecs.ApplicationLoadBalancerAttachmentArgs{
/// 				ContainerName: "app",
/// 				ContainerPort: 80,
/// 				ListenerArn:   listener.Arn,
/// 				Priority:      10,
/// 			},
/// 		},
/// 	},
/// 	TaskDefinitionArn: taskDefinition.TaskDefinitionArn,
/// 	VpcSubnetIds:      vpc2.PrivateSubnetIds,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// 	frontendHttp,
/// 	frontendEgress,
/// }))
/// if err != nil {
/// 	return err
/// }
/// ```
///
/// ```csharp
/// var service = new Awsx.Ecs.Service("service", new()
/// {
///     ClusterArn = cluster.Arn,
///     DeploymentStrategy = new Awsx.Ecs.Inputs.ServiceDeploymentStrategyArgs
///     {
///         Linear = new Awsx.Ecs.Inputs.LinearDeploymentStrategyArgs
///         {
///             BakeTimeMinutes = 5.0,
///             StepBakeTimeMinutes = 3.0,
///             StepPercent = 20.0,
///         },
///     },
///     LoadBalancerAttachments =
///     {
///         { "app", new Awsx.Ecs.Inputs.ServiceLoadBalancerAttachmentArgs
///         {
///             Application = new Awsx.Ecs.Inputs.ApplicationLoadBalancerAttachmentArgs
///             {
///                 ContainerName = "app",
///                 ContainerPort = 80.0,
///                 ListenerArn = listener.Arn,
///                 Priority = 10.0,
///             },
///         } },
///     },
///     TaskDefinitionArn = taskDefinition.TaskDefinitionArn,
///     VpcSubnetIds = vpc.PrivateSubnetIds,
/// }, new ComponentResourceOptions
/// {
///     DependsOn =
///     {
///         frontendHttp,
///         frontendEgress,
///     },
/// });
/// ```
///
/// ```java
/// var service = new Service("service", ServiceArgs.builder()
///     .clusterArn(cluster.arn())
///     .deploymentStrategy(ServiceDeploymentStrategyArgs.builder()
///         .linear(LinearDeploymentStrategyArgs.builder()
///             .bakeTimeMinutes(5.0)
///             .stepBakeTimeMinutes(3.0)
///             .stepPercent(20.0)
///             .build())
///         .build())
///     .loadBalancerAttachments(Map.of("app", ServiceLoadBalancerAttachmentArgs.builder()
///         .application(ApplicationLoadBalancerAttachmentArgs.builder()
///             .containerName("app")
///             .containerPort(80.0)
///             .listenerArn(listener.arn())
///             .priority(10.0)
///             .build())
///         .build()))
///     .taskDefinitionArn(taskDefinition.taskDefinitionArn())
///     .vpcSubnetIds(vpc.privateSubnetIds())
///     .build(), CustomResourceOptions.builder()
///         .dependsOn(
///             frontendHttp,
///             frontendEgress)
///         .build());
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: awsx:ecs:Service
///     properties:
///       clusterArn: ${cluster.arn}
///       taskDefinitionArn: ${taskDefinition.taskDefinitionArn}
///       vpcSubnetIds: ${vpc.privateSubnetIds}
///       loadBalancerAttachments:
///         app:
///           application:
///             containerName: app
///             containerPort: 80
///             listenerArn: ${listener.arn}
///             priority: 10
///       deploymentStrategy:
///         linear:
///           stepPercent: 20
///           stepBakeTimeMinutes: 3
///           bakeTimeMinutes: 5
///     options:
///       dependsOn:
///         - ${frontendHttp}
///         - ${frontendEgress}
/// ```
///
///
///
/// After all production traffic shifts, ECS keeps the previous revision running for another 5 minutes (`bakeTimeMinutes`).
///
/// Linear deployments require at least one load balancer attachment, see [the AWS docs for more details](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-type-linear.html).
///
/// #### Canary deployments
///
/// Canary deployments send an initial percentage of production traffic to the new revision before shifting the remainder.
///
///
///
/// ```typescript
/// const service = new awsx.ecs.Service("service", {
///     clusterArn: cluster.arn,
///     deploymentStrategy: {
///         canary: {
///             bakeTimeMinutes: 5,
///             canaryBakeTimeMinutes: 10,
///             canaryPercent: 10,
///         },
///     },
///     loadBalancerAttachments: {
///         app: {
///             application: {
///                 containerName: "app",
///                 containerPort: 80,
///                 listenerArn: listener.arn,
///                 priority: 10,
///             },
///         },
///     },
///     taskDefinitionArn: taskDefinition.taskDefinitionArn,
///     vpcSubnetIds: vpc.privateSubnetIds,
/// }, {
///     dependsOn: [
///         frontendHttp,
///         frontendEgress,
///     ],
/// });
/// ```
///
/// ```python
/// service = awsx.ecs.Service("service",
///     cluster_arn=cluster.arn,
///     deployment_strategy={
///         "canary": {
///             "bake_time_minutes": float(5),
///             "canary_bake_time_minutes": float(10),
///             "canary_percent": float(10),
///         },
///     },
///     load_balancer_attachments={
///         "app": {
///             "application": {
///                 "container_name": "app",
///                 "container_port": float(80),
///                 "listener_arn": listener.arn,
///                 "priority": float(10),
///             },
///         },
///     },
///     task_definition_arn=task_definition.task_definition_arn,
///     vpc_subnet_ids=vpc.private_subnet_ids,
///     opts = pulumi.ResourceOptions(depends_on=[
///             frontend_http,
///             frontend_egress,
///         ]))
/// ```
///
/// ```go
/// service, err := awsxecs.NewService(ctx, "service", &awsxecs.ServiceArgs{
/// 	ClusterArn: cluster.Arn,
/// 	DeploymentStrategy: ecs.ServiceDeploymentStrategyArgs{
/// 		Canary: ecs.CanaryDeploymentStrategyArgs{
/// 			BakeTimeMinutes:       5,
/// 			CanaryBakeTimeMinutes: 10,
/// 			CanaryPercent:         10,
/// 		},
/// 	},
/// 	LoadBalancerAttachments: map[string]ecs.ServiceLoadBalancerAttachmentArgs{
/// 		"app": ecs.ServiceLoadBalancerAttachmentArgs{
/// 			Application: ecs.ApplicationLoadBalancerAttachmentArgs{
/// 				ContainerName: "app",
/// 				ContainerPort: 80,
/// 				ListenerArn:   listener.Arn,
/// 				Priority:      10,
/// 			},
/// 		},
/// 	},
/// 	TaskDefinitionArn: taskDefinition.TaskDefinitionArn,
/// 	VpcSubnetIds:      vpc2.PrivateSubnetIds,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// 	frontendHttp,
/// 	frontendEgress,
/// }))
/// if err != nil {
/// 	return err
/// }
/// ```
///
/// ```csharp
/// var service = new Awsx.Ecs.Service("service", new()
/// {
///     ClusterArn = cluster.Arn,
///     DeploymentStrategy = new Awsx.Ecs.Inputs.ServiceDeploymentStrategyArgs
///     {
///         Canary = new Awsx.Ecs.Inputs.CanaryDeploymentStrategyArgs
///         {
///             BakeTimeMinutes = 5.0,
///             CanaryBakeTimeMinutes = 10.0,
///             CanaryPercent = 10.0,
///         },
///     },
///     LoadBalancerAttachments =
///     {
///         { "app", new Awsx.Ecs.Inputs.ServiceLoadBalancerAttachmentArgs
///         {
///             Application = new Awsx.Ecs.Inputs.ApplicationLoadBalancerAttachmentArgs
///             {
///                 ContainerName = "app",
///                 ContainerPort = 80.0,
///                 ListenerArn = listener.Arn,
///                 Priority = 10.0,
///             },
///         } },
///     },
///     TaskDefinitionArn = taskDefinition.TaskDefinitionArn,
///     VpcSubnetIds = vpc.PrivateSubnetIds,
/// }, new ComponentResourceOptions
/// {
///     DependsOn =
///     {
///         frontendHttp,
///         frontendEgress,
///     },
/// });
/// ```
///
/// ```java
/// var service = new Service("service", ServiceArgs.builder()
///     .clusterArn(cluster.arn())
///     .deploymentStrategy(ServiceDeploymentStrategyArgs.builder()
///         .canary(CanaryDeploymentStrategyArgs.builder()
///             .bakeTimeMinutes(5.0)
///             .canaryBakeTimeMinutes(10.0)
///             .canaryPercent(10.0)
///             .build())
///         .build())
///     .loadBalancerAttachments(Map.of("app", ServiceLoadBalancerAttachmentArgs.builder()
///         .application(ApplicationLoadBalancerAttachmentArgs.builder()
///             .containerName("app")
///             .containerPort(80.0)
///             .listenerArn(listener.arn())
///             .priority(10.0)
///             .build())
///         .build()))
///     .taskDefinitionArn(taskDefinition.taskDefinitionArn())
///     .vpcSubnetIds(vpc.privateSubnetIds())
///     .build(), CustomResourceOptions.builder()
///         .dependsOn(
///             frontendHttp,
///             frontendEgress)
///         .build());
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: awsx:ecs:Service
///     properties:
///       clusterArn: ${cluster.arn}
///       taskDefinitionArn: ${taskDefinition.taskDefinitionArn}
///       vpcSubnetIds: ${vpc.privateSubnetIds}
///       loadBalancerAttachments:
///         app:
///           application:
///             containerName: app
///             containerPort: 80
///             listenerArn: ${listener.arn}
///             priority: 10
///       deploymentStrategy:
///         canary:
///           canaryPercent: 10
///           canaryBakeTimeMinutes: 10
///           bakeTimeMinutes: 5
///     options:
///       dependsOn:
///         - ${frontendHttp}
///         - ${frontendEgress}
/// ```
///
///
///
/// This configuration sends 10% of production traffic (`canaryPercent`) to the new revision for 10 minutes (`canaryBakeTimeMinutes`). ECS then shifts the remaining traffic and keeps the previous revision running for another 5 minutes (`bakeTimeMinutes`).
///
/// Canary deployments require at least one load balancer attachment, see [the AWS docs for more details](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/canary-deployment.html).
///
/// ### Deployment lifecycle hooks
///
/// Use `lambdaHooks` to validate a deployment with a Lambda function, or `pauseHooks` to wait for an external approval or validation workflow.
///
/// #### Lambda hooks
///
/// Add Lambda hooks inside the selected deployment strategy. This example invokes an existing Lambda function before a rolling deployment starts replacement tasks.
///
/// The Lambda Function must implement the [ECS Lambda hook contract](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/lambda-lifecycle-hooks.html) and perform the pre-deployment checks your application requires.
///
///
///
/// ```typescript
/// const service = new awsx.ecs.Service("service", {
///     clusterArn: cluster.arn,
///     deploymentStrategy: {
///         rolling: {
///             lambdaHooks: [{
///                 functionArn: "arn:aws:lambda:us-west-2:123456789012:function:deployment-validation",
///                 hookDetails: {
///                     someKey: "someValue",
///                 },
///             }],
///         },
///     },
///     loadBalancerAttachments: {
///         app: {
///             application: {
///                 containerName: "app",
///                 containerPort: 80,
///                 listenerArn: listener.arn,
///                 priority: 10,
///             },
///         },
///     },
///     taskDefinitionArn: taskDefinition.taskDefinitionArn,
///     vpcSubnetIds: vpc.privateSubnetIds,
/// }, {
///     dependsOn: [
///         frontendHttp,
///         frontendEgress,
///     ],
/// });
/// ```
///
/// ```python
/// service = awsx.ecs.Service("service",
///     cluster_arn=cluster.arn,
///     deployment_strategy={
///         "rolling": {
///             "lambda_hooks": [{
///                 "function_arn": "arn:aws:lambda:us-west-2:123456789012:function:deployment-validation",
///                 "hook_details": {
///                     "someKey": "someValue",
///                 },
///             }],
///         },
///     },
///     load_balancer_attachments={
///         "app": {
///             "application": {
///                 "container_name": "app",
///                 "container_port": float(80),
///                 "listener_arn": listener.arn,
///                 "priority": float(10),
///             },
///         },
///     },
///     task_definition_arn=task_definition.task_definition_arn,
///     vpc_subnet_ids=vpc.private_subnet_ids,
///     opts = pulumi.ResourceOptions(depends_on=[
///             frontend_http,
///             frontend_egress,
///         ]))
/// ```
///
/// ```go
/// service, err := awsxecs.NewService(ctx, "service", &awsxecs.ServiceArgs{
/// 	ClusterArn: cluster.Arn,
/// 	DeploymentStrategy: ecs.ServiceDeploymentStrategyArgs{
/// 		Rolling: ecs.RollingDeploymentStrategyArgs{
/// 			LambdaHooks: []ecs.RollingLambdaHookArgs{
/// 				{
/// 					FunctionArn: pulumi.String("arn:aws:lambda:us-west-2:123456789012:function:deployment-validation"),
/// 					HookDetails: {
/// 						"someKey": pulumi.Any("someValue"),
/// 					},
/// 				},
/// 			},
/// 		},
/// 	},
/// 	LoadBalancerAttachments: map[string]ecs.ServiceLoadBalancerAttachmentArgs{
/// 		"app": ecs.ServiceLoadBalancerAttachmentArgs{
/// 			Application: ecs.ApplicationLoadBalancerAttachmentArgs{
/// 				ContainerName: "app",
/// 				ContainerPort: 80,
/// 				ListenerArn:   listener.Arn,
/// 				Priority:      10,
/// 			},
/// 		},
/// 	},
/// 	TaskDefinitionArn: taskDefinition.TaskDefinitionArn,
/// 	VpcSubnetIds:      vpc2.PrivateSubnetIds,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// 	frontendHttp,
/// 	frontendEgress,
/// }))
/// if err != nil {
/// 	return err
/// }
/// ```
///
/// ```csharp
/// var service = new Awsx.Ecs.Service("service", new()
/// {
///     ClusterArn = cluster.Arn,
///     DeploymentStrategy = new Awsx.Ecs.Inputs.ServiceDeploymentStrategyArgs
///     {
///         Rolling = new Awsx.Ecs.Inputs.RollingDeploymentStrategyArgs
///         {
///             LambdaHooks = new()
///             {
///                 new Awsx.Ecs.Inputs.RollingLambdaHookArgs
///                 {
///                     FunctionArn = "arn:aws:lambda:us-west-2:123456789012:function:deployment-validation",
///                     HookDetails =
///                     {
///                         { "someKey", "someValue" },
///                     },
///                 },
///             },
///         },
///     },
///     LoadBalancerAttachments =
///     {
///         { "app", new Awsx.Ecs.Inputs.ServiceLoadBalancerAttachmentArgs
///         {
///             Application = new Awsx.Ecs.Inputs.ApplicationLoadBalancerAttachmentArgs
///             {
///                 ContainerName = "app",
///                 ContainerPort = 80.0,
///                 ListenerArn = listener.Arn,
///                 Priority = 10.0,
///             },
///         } },
///     },
///     TaskDefinitionArn = taskDefinition.TaskDefinitionArn,
///     VpcSubnetIds = vpc.PrivateSubnetIds,
/// }, new ComponentResourceOptions
/// {
///     DependsOn =
///     {
///         frontendHttp,
///         frontendEgress,
///     },
/// });
/// ```
///
/// ```java
/// var service = new Service("service", ServiceArgs.builder()
///     .clusterArn(cluster.arn())
///     .deploymentStrategy(ServiceDeploymentStrategyArgs.builder()
///         .rolling(RollingDeploymentStrategyArgs.builder()
///             .lambdaHooks(RollingLambdaHookArgs.builder()
///                 .functionArn("arn:aws:lambda:us-west-2:123456789012:function:deployment-validation")
///                 .hookDetails(Map.of("someKey", "someValue"))
///                 .build())
///             .build())
///         .build())
///     .loadBalancerAttachments(Map.of("app", ServiceLoadBalancerAttachmentArgs.builder()
///         .application(ApplicationLoadBalancerAttachmentArgs.builder()
///             .containerName("app")
///             .containerPort(80.0)
///             .listenerArn(listener.arn())
///             .priority(10.0)
///             .build())
///         .build()))
///     .taskDefinitionArn(taskDefinition.taskDefinitionArn())
///     .vpcSubnetIds(vpc.privateSubnetIds())
///     .build(), CustomResourceOptions.builder()
///         .dependsOn(
///             frontendHttp,
///             frontendEgress)
///         .build());
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: awsx:ecs:Service
///     properties:
///       clusterArn: ${cluster.arn}
///       taskDefinitionArn: ${taskDefinition.taskDefinitionArn}
///       vpcSubnetIds: ${vpc.privateSubnetIds}
///       loadBalancerAttachments:
///         app:
///           application:
///             containerName: app
///             containerPort: 80
///             listenerArn: ${listener.arn}
///             priority: 10
///       deploymentStrategy:
///         rolling:
///           lambdaHooks:
///             - functionArn: arn:aws:lambda:us-west-2:123456789012:function:deployment-validation
///               hookDetails:
///                 someKey: someValue
///     options:
///       dependsOn:
///         - ${frontendHttp}
///         - ${frontendEgress}
/// ```
///
///
///
/// The existing function's execution role must grant any permissions its checks require, such as reading configuration or writing logs. This is separate from the invocation role that lets ECS call the function.
///
/// The `hookDetails` field is a dictionary that you can use to pass data into your lifecycle hook function.
///
/// #### Pause hooks
///
/// Pause hooks wait for an external workflow to continue or roll back the deployment. This example pauses a rolling deployment before replacement tasks start:
///
///
///
/// ```typescript
/// const service = new awsx.ecs.Service("service", {
///     clusterArn: cluster.arn,
///     deploymentStrategy: {
///         rolling: {
///             pauseHooks: [{
///                 timeoutAction: awsx.ecs.PauseTimeoutAction.ROLLBACK,
///                 timeoutMinutes: 30,
///             }],
///         },
///     },
///     loadBalancerAttachments: {
///         app: {
///             application: {
///                 containerName: "app",
///                 containerPort: 80,
///                 listenerArn: listener.arn,
///                 priority: 10,
///             },
///         },
///     },
///     taskDefinitionArn: taskDefinition.taskDefinitionArn,
///     vpcSubnetIds: vpc.privateSubnetIds,
/// }, {
///     dependsOn: [
///         frontendHttp,
///         frontendEgress,
///     ],
/// });
/// ```
///
/// ```python
/// service = awsx.ecs.Service("service",
///     cluster_arn=cluster.arn,
///     deployment_strategy={
///         "rolling": {
///             "pause_hooks": [{
///                 "timeout_action": awsx.ecs.PauseTimeoutAction.ROLLBACK,
///                 "timeout_minutes": float(30),
///             }],
///         },
///     },
///     load_balancer_attachments={
///         "app": {
///             "application": {
///                 "container_name": "app",
///                 "container_port": float(80),
///                 "listener_arn": listener.arn,
///                 "priority": float(10),
///             },
///         },
///     },
///     task_definition_arn=task_definition.task_definition_arn,
///     vpc_subnet_ids=vpc.private_subnet_ids,
///     opts = pulumi.ResourceOptions(depends_on=[
///             frontend_http,
///             frontend_egress,
///         ]))
/// ```
///
/// ```go
/// service, err := awsxecs.NewService(ctx, "service", &awsxecs.ServiceArgs{
/// 	ClusterArn: cluster.Arn,
/// 	DeploymentStrategy: ecs.ServiceDeploymentStrategyArgs{
/// 		Rolling: ecs.RollingDeploymentStrategyArgs{
/// 			PauseHooks: []ecs.RollingPauseHookArgs{
/// 				{
/// 					TimeoutAction:  awsxecs.PauseTimeoutActionROLLBACK,
/// 					TimeoutMinutes: 30,
/// 				},
/// 			},
/// 		},
/// 	},
/// 	LoadBalancerAttachments: map[string]ecs.ServiceLoadBalancerAttachmentArgs{
/// 		"app": ecs.ServiceLoadBalancerAttachmentArgs{
/// 			Application: ecs.ApplicationLoadBalancerAttachmentArgs{
/// 				ContainerName: "app",
/// 				ContainerPort: 80,
/// 				ListenerArn:   listener.Arn,
/// 				Priority:      10,
/// 			},
/// 		},
/// 	},
/// 	TaskDefinitionArn: taskDefinition.TaskDefinitionArn,
/// 	VpcSubnetIds:      vpc2.PrivateSubnetIds,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// 	frontendHttp,
/// 	frontendEgress,
/// }))
/// if err != nil {
/// 	return err
/// }
/// ```
///
/// ```csharp
/// var service = new Awsx.Ecs.Service("service", new()
/// {
///     ClusterArn = cluster.Arn,
///     DeploymentStrategy = new Awsx.Ecs.Inputs.ServiceDeploymentStrategyArgs
///     {
///         Rolling = new Awsx.Ecs.Inputs.RollingDeploymentStrategyArgs
///         {
///             PauseHooks = new()
///             {
///                 new Awsx.Ecs.Inputs.RollingPauseHookArgs
///                 {
///                     TimeoutAction = Awsx.Ecs.PauseTimeoutAction.ROLLBACK,
///                     TimeoutMinutes = 30.0,
///                 },
///             },
///         },
///     },
///     LoadBalancerAttachments =
///     {
///         { "app", new Awsx.Ecs.Inputs.ServiceLoadBalancerAttachmentArgs
///         {
///             Application = new Awsx.Ecs.Inputs.ApplicationLoadBalancerAttachmentArgs
///             {
///                 ContainerName = "app",
///                 ContainerPort = 80.0,
///                 ListenerArn = listener.Arn,
///                 Priority = 10.0,
///             },
///         } },
///     },
///     TaskDefinitionArn = taskDefinition.TaskDefinitionArn,
///     VpcSubnetIds = vpc.PrivateSubnetIds,
/// }, new ComponentResourceOptions
/// {
///     DependsOn =
///     {
///         frontendHttp,
///         frontendEgress,
///     },
/// });
/// ```
///
/// ```java
/// var service = new Service("service", ServiceArgs.builder()
///     .clusterArn(cluster.arn())
///     .deploymentStrategy(ServiceDeploymentStrategyArgs.builder()
///         .rolling(RollingDeploymentStrategyArgs.builder()
///             .pauseHooks(RollingPauseHookArgs.builder()
///                 .timeoutAction("ROLLBACK")
///                 .timeoutMinutes(30.0)
///                 .build())
///             .build())
///         .build())
///     .loadBalancerAttachments(Map.of("app", ServiceLoadBalancerAttachmentArgs.builder()
///         .application(ApplicationLoadBalancerAttachmentArgs.builder()
///             .containerName("app")
///             .containerPort(80.0)
///             .listenerArn(listener.arn())
///             .priority(10.0)
///             .build())
///         .build()))
///     .taskDefinitionArn(taskDefinition.taskDefinitionArn())
///     .vpcSubnetIds(vpc.privateSubnetIds())
///     .build(), CustomResourceOptions.builder()
///         .dependsOn(
///             frontendHttp,
///             frontendEgress)
///         .build());
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: awsx:ecs:Service
///     properties:
///       clusterArn: ${cluster.arn}
///       taskDefinitionArn: ${taskDefinition.taskDefinitionArn}
///       vpcSubnetIds: ${vpc.privateSubnetIds}
///       loadBalancerAttachments:
///         app:
///           application:
///             containerName: app
///             containerPort: 80
///             listenerArn: ${listener.arn}
///             priority: 10
///       deploymentStrategy:
///         rolling:
///           pauseHooks:
///             - timeoutMinutes: 30
///               timeoutAction: ROLLBACK
///     options:
///       dependsOn:
///         - ${frontendHttp}
///         - ${frontendEgress}
/// ```
///
///
///
/// See the [AWS docs](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/pause-lifecycle-hooks.html) for more details on pause hooks.
///
/// Lambda and pause hooks at the same stage run in parallel and every hook must complete before the deployment proceeds.
///
/// #### Progressive deployment hooks
///
/// For blue/green, linear, and canary deployments, you can specify the lifecycle stages where each hook will run. This example uses an existing validation function, adds a header-based test route, and invokes the function after test traffic reaches the new revision.
///
///
///
/// ```typescript
/// const service = new awsx.ecs.Service("service", {
///     clusterArn: cluster.arn,
///     deploymentStrategy: {
///         canary: {
///             bakeTimeMinutes: 5,
///             canaryBakeTimeMinutes: 10,
///             canaryPercent: 10,
///             lambdaHooks: [{
///                 functionArn: "arn:aws:lambda:us-west-2:123456789012:function:deployment-validation",
///                 lifecycleStages: [awsx.ecs.ProgressiveLambdaLifecycleStage.POST_TEST_TRAFFIC_SHIFT],
///             }],
///             pauseHooks: [{
///                 lifecycleStages: [awsx.ecs.ProgressivePauseLifecycleStage.PRE_PRODUCTION_TRAFFIC_SHIFT],
///                 timeoutAction: awsx.ecs.PauseTimeoutAction.ROLLBACK,
///                 timeoutMinutes: 30,
///             }],
///         },
///     },
///     loadBalancerAttachments: {
///         app: {
///             application: {
///                 containerName: "app",
///                 containerPort: 80,
///                 listenerArn: listener.arn,
///                 priority: 10,
///                 testTraffic: {
///                     match: {
///                         headers: [{
///                             name: "X-Deployment-Test",
///                             values: ["true"],
///                         }],
///                     },
///                 },
///             },
///         },
///     },
///     taskDefinitionArn: taskDefinition.taskDefinitionArn,
///     vpcSubnetIds: vpc.privateSubnetIds,
/// }, {
///     dependsOn: [
///         frontendHttp,
///         frontendEgress,
///     ],
/// });
/// ```
///
/// ```python
/// service = awsx.ecs.Service("service",
///     cluster_arn=cluster.arn,
///     deployment_strategy={
///         "canary": {
///             "bake_time_minutes": float(5),
///             "canary_bake_time_minutes": float(10),
///             "canary_percent": float(10),
///             "lambda_hooks": [{
///                 "function_arn": "arn:aws:lambda:us-west-2:123456789012:function:deployment-validation",
///                 "lifecycle_stages": [awsx.ecs.ProgressiveLambdaLifecycleStage.POS_T_TES_T_TRAFFI_C_SHIFT],
///             }],
///             "pause_hooks": [{
///                 "lifecycle_stages": [awsx.ecs.ProgressivePauseLifecycleStage.PR_E_PRODUCTIO_N_TRAFFI_C_SHIFT],
///                 "timeout_action": awsx.ecs.PauseTimeoutAction.ROLLBACK,
///                 "timeout_minutes": float(30),
///             }],
///         },
///     },
///     load_balancer_attachments={
///         "app": {
///             "application": {
///                 "container_name": "app",
///                 "container_port": float(80),
///                 "listener_arn": listener.arn,
///                 "priority": float(10),
///                 "test_traffic": {
///                     "match": {
///                         "headers": [{
///                             "name": "X-Deployment-Test",
///                             "values": ["true"],
///                         }],
///                     },
///                 },
///             },
///         },
///     },
///     task_definition_arn=task_definition.task_definition_arn,
///     vpc_subnet_ids=vpc.private_subnet_ids,
///     opts = pulumi.ResourceOptions(depends_on=[
///             frontend_http,
///             frontend_egress,
///         ]))
/// ```
///
/// ```go
/// service, err := awsxecs.NewService(ctx, "service", &awsxecs.ServiceArgs{
/// 	ClusterArn: cluster.Arn,
/// 	DeploymentStrategy: ecs.ServiceDeploymentStrategyArgs{
/// 		Canary: ecs.CanaryDeploymentStrategyArgs{
/// 			BakeTimeMinutes:       5,
/// 			CanaryBakeTimeMinutes: 10,
/// 			CanaryPercent:         10,
/// 			LambdaHooks: []ecs.ProgressiveLambdaHookArgs{
/// 				{
/// 					FunctionArn: pulumi.String("arn:aws:lambda:us-west-2:123456789012:function:deployment-validation"),
/// 					LifecycleStages: []ecs.ProgressiveLambdaLifecycleStage{
/// 						awsxecs.ProgressiveLambdaLifecycleStage_POST_TEST_TRAFFIC_SHIFT,
/// 					},
/// 				},
/// 			},
/// 			PauseHooks: []ecs.ProgressivePauseHookArgs{
/// 				{
/// 					LifecycleStages: []ecs.ProgressivePauseLifecycleStage{
/// 						awsxecs.ProgressivePauseLifecycleStage_PRE_PRODUCTION_TRAFFIC_SHIFT,
/// 					},
/// 					TimeoutAction:  awsxecs.PauseTimeoutActionROLLBACK,
/// 					TimeoutMinutes: 30,
/// 				},
/// 			},
/// 		},
/// 	},
/// 	LoadBalancerAttachments: map[string]ecs.ServiceLoadBalancerAttachmentArgs{
/// 		"app": ecs.ServiceLoadBalancerAttachmentArgs{
/// 			Application: ecs.ApplicationLoadBalancerAttachmentArgs{
/// 				ContainerName: "app",
/// 				ContainerPort: 80,
/// 				ListenerArn:   listener.Arn,
/// 				Priority:      10,
/// 				TestTraffic: ecs.TestTrafficArgs{
/// 					Match: ecs.ListenerConditionsArgs{
/// 						Headers: []ecs.HeaderConditionArgs{
/// 							{
/// 								Name: pulumi.String("X-Deployment-Test"),
/// 								Values: []pulumi.String{
/// 									pulumi.String("true"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		},
/// 	},
/// 	TaskDefinitionArn: taskDefinition.TaskDefinitionArn,
/// 	VpcSubnetIds:      vpc2.PrivateSubnetIds,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// 	frontendHttp,
/// 	frontendEgress,
/// }))
/// if err != nil {
/// 	return err
/// }
/// ```
///
/// ```csharp
/// var service = new Awsx.Ecs.Service("service", new()
/// {
///     ClusterArn = cluster.Arn,
///     DeploymentStrategy = new Awsx.Ecs.Inputs.ServiceDeploymentStrategyArgs
///     {
///         Canary = new Awsx.Ecs.Inputs.CanaryDeploymentStrategyArgs
///         {
///             BakeTimeMinutes = 5.0,
///             CanaryBakeTimeMinutes = 10.0,
///             CanaryPercent = 10.0,
///             LambdaHooks = new()
///             {
///                 new Awsx.Ecs.Inputs.ProgressiveLambdaHookArgs
///                 {
///                     FunctionArn = "arn:aws:lambda:us-west-2:123456789012:function:deployment-validation",
///                     LifecycleStages = new()
///                     {
///                         Awsx.Ecs.ProgressiveLambdaLifecycleStage.POST_TEST_TRAFFIC_SHIFT,
///                     },
///                 },
///             },
///             PauseHooks = new()
///             {
///                 new Awsx.Ecs.Inputs.ProgressivePauseHookArgs
///                 {
///                     LifecycleStages = new()
///                     {
///                         Awsx.Ecs.ProgressivePauseLifecycleStage.PRE_PRODUCTION_TRAFFIC_SHIFT,
///                     },
///                     TimeoutAction = Awsx.Ecs.PauseTimeoutAction.ROLLBACK,
///                     TimeoutMinutes = 30.0,
///                 },
///             },
///         },
///     },
///     LoadBalancerAttachments =
///     {
///         { "app", new Awsx.Ecs.Inputs.ServiceLoadBalancerAttachmentArgs
///         {
///             Application = new Awsx.Ecs.Inputs.ApplicationLoadBalancerAttachmentArgs
///             {
///                 ContainerName = "app",
///                 ContainerPort = 80.0,
///                 ListenerArn = listener.Arn,
///                 Priority = 10.0,
///                 TestTraffic = new Awsx.Ecs.Inputs.TestTrafficArgs
///                 {
///                     Match = new Awsx.Ecs.Inputs.ListenerConditionsArgs
///                     {
///                         Headers = new()
///                         {
///                             new Awsx.Ecs.Inputs.HeaderConditionArgs
///                             {
///                                 Name = "X-Deployment-Test",
///                                 Values = new()
///                                 {
///                                     "true",
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///         } },
///     },
///     TaskDefinitionArn = taskDefinition.TaskDefinitionArn,
///     VpcSubnetIds = vpc.PrivateSubnetIds,
/// }, new ComponentResourceOptions
/// {
///     DependsOn =
///     {
///         frontendHttp,
///         frontendEgress,
///     },
/// });
/// ```
///
/// ```java
/// var service = new Service("service", ServiceArgs.builder()
///     .clusterArn(cluster.arn())
///     .deploymentStrategy(ServiceDeploymentStrategyArgs.builder()
///         .canary(CanaryDeploymentStrategyArgs.builder()
///             .bakeTimeMinutes(5.0)
///             .canaryBakeTimeMinutes(10.0)
///             .canaryPercent(10.0)
///             .lambdaHooks(ProgressiveLambdaHookArgs.builder()
///                 .functionArn("arn:aws:lambda:us-west-2:123456789012:function:deployment-validation")
///                 .lifecycleStages("POST_TEST_TRAFFIC_SHIFT")
///                 .build())
///             .pauseHooks(ProgressivePauseHookArgs.builder()
///                 .lifecycleStages("PRE_PRODUCTION_TRAFFIC_SHIFT")
///                 .timeoutAction("ROLLBACK")
///                 .timeoutMinutes(30.0)
///                 .build())
///             .build())
///         .build())
///     .loadBalancerAttachments(Map.of("app", ServiceLoadBalancerAttachmentArgs.builder()
///         .application(ApplicationLoadBalancerAttachmentArgs.builder()
///             .containerName("app")
///             .containerPort(80.0)
///             .listenerArn(listener.arn())
///             .priority(10.0)
///             .testTraffic(TestTrafficArgs.builder()
///                 .match(ListenerConditionsArgs.builder()
///                     .headers(HeaderConditionArgs.builder()
///                         .name("X-Deployment-Test")
///                         .values("true")
///                         .build().applyValue(___convert -> ___convert).applyValue(___convert -> ___convert))
///                     .build().applyValue(___convert -> ___convert))
///                 .build())
///             .build())
///         .build()))
///     .taskDefinitionArn(taskDefinition.taskDefinitionArn())
///     .vpcSubnetIds(vpc.privateSubnetIds())
///     .build(), CustomResourceOptions.builder()
///         .dependsOn(
///             frontendHttp,
///             frontendEgress)
///         .build());
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: awsx:ecs:Service
///     properties:
///       clusterArn: ${cluster.arn}
///       taskDefinitionArn: ${taskDefinition.taskDefinitionArn}
///       vpcSubnetIds: ${vpc.privateSubnetIds}
///       loadBalancerAttachments:
///         app:
///           application:
///             containerName: app
///             containerPort: 80
///             listenerArn: ${listener.arn}
///             priority: 10
///             testTraffic:
///               match:
///                 headers:
///                   - name: X-Deployment-Test
///                     values:
///                       - 'true'
///       deploymentStrategy:
///         canary:
///           canaryPercent: 10
///           canaryBakeTimeMinutes: 10
///           bakeTimeMinutes: 5
///           lambdaHooks:
///             - functionArn: arn:aws:lambda:us-west-2:123456789012:function:deployment-validation
///               lifecycleStages:
///                 - POST_TEST_TRAFFIC_SHIFT
///           pauseHooks:
///             - lifecycleStages:
///                 - PRE_PRODUCTION_TRAFFIC_SHIFT
///               timeoutMinutes: 30
///               timeoutAction: ROLLBACK
///     options:
///       dependsOn:
///         - ${frontendHttp}
///         - ${frontendEgress}
/// ```
///
///
///
/// Use `POST_TEST_TRAFFIC_SHIFT` with a test traffic route to validate the new revision before production traffic shifts.
///
/// For canary and linear deployments, `PRE_PRODUCTION_TRAFFIC_SHIFT` pauses before each traffic shift. Each pause has a new hook ID and requires a separate decision.
///
/// ### Test traffic
///
/// Use `testTraffic` to route validation requests to the new revision before production traffic shifts. In this example ECS will provision the new revision, shift just the test traffic (all requests with headers matching `X-Deployment-Test`) over to the new revision, and then pause so you can validate the new revision before allowing production traffic to shift.
///
///
///
/// ```typescript
/// const service = new awsx.ecs.Service("service", {
///     clusterArn: cluster.arn,
///     deploymentStrategy: {
///         blueGreen: {
///             bakeTimeMinutes: 5,
///             pauseHooks: [{
///                 lifecycleStages: [awsx.ecs.ProgressivePauseLifecycleStage.POST_TEST_TRAFFIC_SHIFT],
///                 timeoutAction: awsx.ecs.PauseTimeoutAction.ROLLBACK,
///                 timeoutMinutes: 30,
///             }],
///         },
///     },
///     loadBalancerAttachments: {
///         app: {
///             application: {
///                 containerName: "app",
///                 containerPort: 80,
///                 listenerArn: listener.arn,
///                 priority: 10,
///                 testTraffic: {
///                     match: {
///                         headers: [{
///                             name: "X-Deployment-Test",
///                             values: ["true"],
///                         }],
///                     },
///                 },
///             },
///         },
///     },
///     taskDefinitionArn: taskDefinition.taskDefinitionArn,
///     vpcSubnetIds: vpc.privateSubnetIds,
/// }, {
///     dependsOn: [
///         frontendHttp,
///         frontendEgress,
///     ],
/// });
/// ```
///
/// ```python
/// service = awsx.ecs.Service("service",
///     cluster_arn=cluster.arn,
///     deployment_strategy={
///         "blue_green": {
///             "bake_time_minutes": float(5),
///             "pause_hooks": [{
///                 "lifecycle_stages": [awsx.ecs.ProgressivePauseLifecycleStage.POS_T_TES_T_TRAFFI_C_SHIFT],
///                 "timeout_action": awsx.ecs.PauseTimeoutAction.ROLLBACK,
///                 "timeout_minutes": float(30),
///             }],
///         },
///     },
///     load_balancer_attachments={
///         "app": {
///             "application": {
///                 "container_name": "app",
///                 "container_port": float(80),
///                 "listener_arn": listener.arn,
///                 "priority": float(10),
///                 "test_traffic": {
///                     "match": {
///                         "headers": [{
///                             "name": "X-Deployment-Test",
///                             "values": ["true"],
///                         }],
///                     },
///                 },
///             },
///         },
///     },
///     task_definition_arn=task_definition.task_definition_arn,
///     vpc_subnet_ids=vpc.private_subnet_ids,
///     opts = pulumi.ResourceOptions(depends_on=[
///             frontend_http,
///             frontend_egress,
///         ]))
/// ```
///
/// ```go
/// service, err := awsxecs.NewService(ctx, "service", &awsxecs.ServiceArgs{
/// 	ClusterArn: cluster.Arn,
/// 	DeploymentStrategy: ecs.ServiceDeploymentStrategyArgs{
/// 		BlueGreen: ecs.BlueGreenDeploymentStrategyArgs{
/// 			BakeTimeMinutes: 5,
/// 			PauseHooks: []ecs.ProgressivePauseHookArgs{
/// 				{
/// 					LifecycleStages: []ecs.ProgressivePauseLifecycleStage{
/// 						awsxecs.ProgressivePauseLifecycleStage_POST_TEST_TRAFFIC_SHIFT,
/// 					},
/// 					TimeoutAction:  awsxecs.PauseTimeoutActionROLLBACK,
/// 					TimeoutMinutes: 30,
/// 				},
/// 			},
/// 		},
/// 	},
/// 	LoadBalancerAttachments: map[string]ecs.ServiceLoadBalancerAttachmentArgs{
/// 		"app": ecs.ServiceLoadBalancerAttachmentArgs{
/// 			Application: ecs.ApplicationLoadBalancerAttachmentArgs{
/// 				ContainerName: "app",
/// 				ContainerPort: 80,
/// 				ListenerArn:   listener.Arn,
/// 				Priority:      10,
/// 				TestTraffic: ecs.TestTrafficArgs{
/// 					Match: ecs.ListenerConditionsArgs{
/// 						Headers: []ecs.HeaderConditionArgs{
/// 							{
/// 								Name: pulumi.String("X-Deployment-Test"),
/// 								Values: []pulumi.String{
/// 									pulumi.String("true"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		},
/// 	},
/// 	TaskDefinitionArn: taskDefinition.TaskDefinitionArn,
/// 	VpcSubnetIds:      vpc2.PrivateSubnetIds,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// 	frontendHttp,
/// 	frontendEgress,
/// }))
/// if err != nil {
/// 	return err
/// }
/// ```
///
/// ```csharp
/// var service = new Awsx.Ecs.Service("service", new()
/// {
///     ClusterArn = cluster.Arn,
///     DeploymentStrategy = new Awsx.Ecs.Inputs.ServiceDeploymentStrategyArgs
///     {
///         BlueGreen = new Awsx.Ecs.Inputs.BlueGreenDeploymentStrategyArgs
///         {
///             BakeTimeMinutes = 5.0,
///             PauseHooks = new()
///             {
///                 new Awsx.Ecs.Inputs.ProgressivePauseHookArgs
///                 {
///                     LifecycleStages = new()
///                     {
///                         Awsx.Ecs.ProgressivePauseLifecycleStage.POST_TEST_TRAFFIC_SHIFT,
///                     },
///                     TimeoutAction = Awsx.Ecs.PauseTimeoutAction.ROLLBACK,
///                     TimeoutMinutes = 30.0,
///                 },
///             },
///         },
///     },
///     LoadBalancerAttachments =
///     {
///         { "app", new Awsx.Ecs.Inputs.ServiceLoadBalancerAttachmentArgs
///         {
///             Application = new Awsx.Ecs.Inputs.ApplicationLoadBalancerAttachmentArgs
///             {
///                 ContainerName = "app",
///                 ContainerPort = 80.0,
///                 ListenerArn = listener.Arn,
///                 Priority = 10.0,
///                 TestTraffic = new Awsx.Ecs.Inputs.TestTrafficArgs
///                 {
///                     Match = new Awsx.Ecs.Inputs.ListenerConditionsArgs
///                     {
///                         Headers = new()
///                         {
///                             new Awsx.Ecs.Inputs.HeaderConditionArgs
///                             {
///                                 Name = "X-Deployment-Test",
///                                 Values = new()
///                                 {
///                                     "true",
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///         } },
///     },
///     TaskDefinitionArn = taskDefinition.TaskDefinitionArn,
///     VpcSubnetIds = vpc.PrivateSubnetIds,
/// }, new ComponentResourceOptions
/// {
///     DependsOn =
///     {
///         frontendHttp,
///         frontendEgress,
///     },
/// });
/// ```
///
/// ```java
/// var service = new Service("service", ServiceArgs.builder()
///     .clusterArn(cluster.arn())
///     .deploymentStrategy(ServiceDeploymentStrategyArgs.builder()
///         .blueGreen(BlueGreenDeploymentStrategyArgs.builder()
///             .bakeTimeMinutes(5.0)
///             .pauseHooks(ProgressivePauseHookArgs.builder()
///                 .lifecycleStages("POST_TEST_TRAFFIC_SHIFT")
///                 .timeoutAction("ROLLBACK")
///                 .timeoutMinutes(30.0)
///                 .build())
///             .build())
///         .build())
///     .loadBalancerAttachments(Map.of("app", ServiceLoadBalancerAttachmentArgs.builder()
///         .application(ApplicationLoadBalancerAttachmentArgs.builder()
///             .containerName("app")
///             .containerPort(80.0)
///             .listenerArn(listener.arn())
///             .priority(10.0)
///             .testTraffic(TestTrafficArgs.builder()
///                 .match(ListenerConditionsArgs.builder()
///                     .headers(HeaderConditionArgs.builder()
///                         .name("X-Deployment-Test")
///                         .values("true")
///                         .build().applyValue(___convert -> ___convert).applyValue(___convert -> ___convert))
///                     .build().applyValue(___convert -> ___convert))
///                 .build())
///             .build())
///         .build()))
///     .taskDefinitionArn(taskDefinition.taskDefinitionArn())
///     .vpcSubnetIds(vpc.privateSubnetIds())
///     .build(), CustomResourceOptions.builder()
///         .dependsOn(
///             frontendHttp,
///             frontendEgress)
///         .build());
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: awsx:ecs:Service
///     properties:
///       clusterArn: ${cluster.arn}
///       taskDefinitionArn: ${taskDefinition.taskDefinitionArn}
///       vpcSubnetIds: ${vpc.privateSubnetIds}
///       loadBalancerAttachments:
///         app:
///           application:
///             containerName: app
///             containerPort: 80
///             listenerArn: ${listener.arn}
///             priority: 10
///             testTraffic:
///               match:
///                 headers:
///                   - name: X-Deployment-Test
///                     values:
///                       - 'true'
///       deploymentStrategy:
///         blueGreen:
///           bakeTimeMinutes: 5
///           pauseHooks:
///             - lifecycleStages:
///                 - POST_TEST_TRAFFIC_SHIFT
///               timeoutMinutes: 30
///               timeoutAction: ROLLBACK
///     options:
///       dependsOn:
///         - ${frontendHttp}
///         - ${frontendEgress}
/// ```
///
///
///
/// An outside workflow must then call `ContinueServiceDeployment` with `CONTINUE` or `ROLLBACK`.
///
/// ### Deployment timeouts
///
/// By default, Pulumi waits for the service to reach a steady state. For progressive deployments, this includes the traffic shifts and bake periods which can be substantial depending on the configuration.
///
/// The component attempts to calculate the timeout based on how the progressive deployments have been configured, but if you need to manually control the timeout you can set `deploymentTimeout`.
///
///
///
/// ```typescript
/// const service = new awsx.ecs.Service("service", {
///     clusterArn: cluster.arn,
///     deploymentTimeout: "2h",
///     loadBalancerAttachments: {
///         app: {
///             application: {
///                 containerName: "app",
///                 containerPort: 80,
///                 listenerArn: listener.arn,
///                 priority: 10,
///             },
///         },
///     },
///     taskDefinitionArn: taskDefinition.taskDefinitionArn,
///     vpcSubnetIds: vpc.privateSubnetIds,
/// }, {
///     dependsOn: [
///         frontendHttp,
///         frontendEgress,
///     ],
/// });
/// ```
///
/// ```python
/// service = awsx.ecs.Service("service",
///     cluster_arn=cluster.arn,
///     deployment_timeout="2h",
///     load_balancer_attachments={
///         "app": {
///             "application": {
///                 "container_name": "app",
///                 "container_port": float(80),
///                 "listener_arn": listener.arn,
///                 "priority": float(10),
///             },
///         },
///     },
///     task_definition_arn=task_definition.task_definition_arn,
///     vpc_subnet_ids=vpc.private_subnet_ids,
///     opts = pulumi.ResourceOptions(depends_on=[
///             frontend_http,
///             frontend_egress,
///         ]))
/// ```
///
/// ```go
/// service, err := awsxecs.NewService(ctx, "service", &awsxecs.ServiceArgs{
/// 	ClusterArn:        cluster.Arn,
/// 	DeploymentTimeout: "2h",
/// 	LoadBalancerAttachments: map[string]ecs.ServiceLoadBalancerAttachmentArgs{
/// 		"app": ecs.ServiceLoadBalancerAttachmentArgs{
/// 			Application: ecs.ApplicationLoadBalancerAttachmentArgs{
/// 				ContainerName: "app",
/// 				ContainerPort: 80,
/// 				ListenerArn:   listener.Arn,
/// 				Priority:      10,
/// 			},
/// 		},
/// 	},
/// 	TaskDefinitionArn: taskDefinition.TaskDefinitionArn,
/// 	VpcSubnetIds:      vpc2.PrivateSubnetIds,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// 	frontendHttp,
/// 	frontendEgress,
/// }))
/// if err != nil {
/// 	return err
/// }
/// ```
///
/// ```csharp
/// var service = new Awsx.Ecs.Service("service", new()
/// {
///     ClusterArn = cluster.Arn,
///     DeploymentTimeout = "2h",
///     LoadBalancerAttachments =
///     {
///         { "app", new Awsx.Ecs.Inputs.ServiceLoadBalancerAttachmentArgs
///         {
///             Application = new Awsx.Ecs.Inputs.ApplicationLoadBalancerAttachmentArgs
///             {
///                 ContainerName = "app",
///                 ContainerPort = 80.0,
///                 ListenerArn = listener.Arn,
///                 Priority = 10.0,
///             },
///         } },
///     },
///     TaskDefinitionArn = taskDefinition.TaskDefinitionArn,
///     VpcSubnetIds = vpc.PrivateSubnetIds,
/// }, new ComponentResourceOptions
/// {
///     DependsOn =
///     {
///         frontendHttp,
///         frontendEgress,
///     },
/// });
/// ```
///
/// ```java
/// var service = new Service("service", ServiceArgs.builder()
///     .clusterArn(cluster.arn())
///     .deploymentTimeout("2h")
///     .loadBalancerAttachments(Map.of("app", ServiceLoadBalancerAttachmentArgs.builder()
///         .application(ApplicationLoadBalancerAttachmentArgs.builder()
///             .containerName("app")
///             .containerPort(80.0)
///             .listenerArn(listener.arn())
///             .priority(10.0)
///             .build())
///         .build()))
///     .taskDefinitionArn(taskDefinition.taskDefinitionArn())
///     .vpcSubnetIds(vpc.privateSubnetIds())
///     .build(), CustomResourceOptions.builder()
///         .dependsOn(
///             frontendHttp,
///             frontendEgress)
///         .build());
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: awsx:ecs:Service
///     properties:
///       clusterArn: ${cluster.arn}
///       taskDefinitionArn: ${taskDefinition.taskDefinitionArn}
///       vpcSubnetIds: ${vpc.privateSubnetIds}
///       loadBalancerAttachments:
///         app:
///           application:
///             containerName: app
///             containerPort: 80
///             listenerArn: ${listener.arn}
///             priority: 10
///       deploymentTimeout: 2h
///     options:
///       dependsOn:
///         - ${frontendHttp}
///         - ${frontendEgress}
/// ```
///
///
///
/// This timeout applies to Pulumi's create and update operations. Reaching it fails the Pulumi operation but does not stop the ECS deployment.
///
/// If you have a separate process that monitors the ECS deployment and don't want the Pulumi operation to wait, you can set `waitForSteadyState: false`.
class Service extends pulumi.ComponentResource {
  /// Security groups attached to the service, preserving the order of securityGroupIds when
  /// supplied. Automatic ingress rules are added ONLY to the first group, unless manageIngress is
  /// false. Supplied-group egress is never modified.
  ///
  /// You can add non-duplicate standalone rules that are not required for initial service readiness.
  /// Do not use this output for rules needed to make load-balancer targets healthy: the remote
  /// component can wait for steady state before returning its outputs. For manual ingress, supply
  /// your own groups and create required rules from their original references before this service.
  ///
  /// Do not combine automatic ingress with inline or exclusive ingress management. AWSX-created
  /// groups also have standalone IPv4 allow-all egress.
  late final pulumi.Output<List<pulumi_aws_ec2.SecurityGroup>?> securityGroups;
  /// ARN of the ECS service
  late final pulumi.Output<String?> serviceArn;
  /// Name of the ECS service within its cluster.
  late final pulumi.Output<String?> serviceName;

  /// Creates a new [Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Service]. {@macro pulumi_ecs_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Service(
    String name, {
    ServiceArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
          'awsx:ecs:Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.ComponentResourceOptions(version: '3.15.0').merge(options),
          remote: true,
        ) {
    securityGroups = registerOutput<List<pulumi_aws_ec2.SecurityGroup>?>('securityGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<pulumi_aws_ec2.SecurityGroup>(); });
    serviceArn = registerOutput<String?>('serviceArn');
    serviceName = registerOutput<String?>('serviceName');
  }
}
