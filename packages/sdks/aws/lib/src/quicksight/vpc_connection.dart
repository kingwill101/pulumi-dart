import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_connection_args.dart';
import 'vpc_connection_state.dart';
import 'vpc_connection_timeouts.dart';

/// Resource for managing an AWS QuickSight VPC Connection.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const vpcConnectionRole = new aws.iam.Role("vpc_connection_role", {
///     inlinePolicies: [{
///         name: "QuickSightVPCConnectionRolePolicy",
///         policy: JSON.stringify({
///             Version: "2012-10-17",
///             Statement: [{
///                 Effect: "Allow",
///                 Action: [
///                     "ec2:CreateNetworkInterface",
///                     "ec2:ModifyNetworkInterfaceAttribute",
///                     "ec2:DeleteNetworkInterface",
///                     "ec2:DescribeSubnets",
///                     "ec2:DescribeSecurityGroups",
///                 ],
///                 Resource: ["*"],
///             }],
///         }),
///     }],
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Effect: "Allow",
///             Action: "sts:AssumeRole",
///             Principal: {
///                 Service: "quicksight.amazonaws.com",
///             },
///         }],
///     }),
/// });
/// const example = new aws.quicksight.VpcConnection("example", {
///     vpcConnectionId: "example-connection-id",
///     name: "Example Connection",
///     roleArn: vpcConnectionRole.arn,
///     securityGroupIds: ["sg-00000000000000000"],
///     subnetIds: [
///         "subnet-00000000000000000",
///         "subnet-00000000000000001",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// vpc_connection_role = aws.iam.Role("vpc_connection_role",
///     inline_policies=[{
///         "name": "QuickSightVPCConnectionRolePolicy",
///         "policy": json.dumps({
///             "Version": "2012-10-17",
///             "Statement": [{
///                 "Effect": "Allow",
///                 "Action": [
///                     "ec2:CreateNetworkInterface",
///                     "ec2:ModifyNetworkInterfaceAttribute",
///                     "ec2:DeleteNetworkInterface",
///                     "ec2:DescribeSubnets",
///                     "ec2:DescribeSecurityGroups",
///                 ],
///                 "Resource": ["*"],
///             }],
///         }),
///     }],
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Effect": "Allow",
///             "Action": "sts:AssumeRole",
///             "Principal": {
///                 "Service": "quicksight.amazonaws.com",
///             },
///         }],
///     }))
/// example = aws.quicksight.VpcConnection("example",
///     vpc_connection_id="example-connection-id",
///     name="Example Connection",
///     role_arn=vpc_connection_role.arn,
///     security_group_ids=["sg-00000000000000000"],
///     subnet_ids=[
///         "subnet-00000000000000000",
///         "subnet-00000000000000001",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vpcConnectionRole = new Aws.Iam.Role("vpc_connection_role", new()
///     {
///         InlinePolicies = new[]
///         {
///             new Aws.Iam.Inputs.RoleInlinePolicyArgs
///             {
///                 Name = "QuickSightVPCConnectionRolePolicy",
///                 Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["Version"] = "2012-10-17",
///                     ["Statement"] = new[]
///                     {
///                         new Dictionary<string, object?>
///                         {
///                             ["Effect"] = "Allow",
///                             ["Action"] = new[]
///                             {
///                                 "ec2:CreateNetworkInterface",
///                                 "ec2:ModifyNetworkInterfaceAttribute",
///                                 "ec2:DeleteNetworkInterface",
///                                 "ec2:DescribeSubnets",
///                                 "ec2:DescribeSecurityGroups",
///                             },
///                             ["Resource"] = new[]
///                             {
///                                 "*",
///                             },
///                         },
///                     },
///                 }),
///             },
///         },
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Effect"] = "Allow",
///                     ["Action"] = "sts:AssumeRole",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "quicksight.amazonaws.com",
///                     },
///                 },
///             },
///         }),
///     });
///
///     var example = new Aws.Quicksight.VpcConnection("example", new()
///     {
///         VpcConnectionId = "example-connection-id",
///         Name = "Example Connection",
///         RoleArn = vpcConnectionRole.Arn,
///         SecurityGroupIds = new[]
///         {
///             "sg-00000000000000000",
///         },
///         SubnetIds = new[]
///         {
///             "subnet-00000000000000000",
///             "subnet-00000000000000001",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Effect": "Allow",
/// 					"Action": []string{
/// 						"ec2:CreateNetworkInterface",
/// 						"ec2:ModifyNetworkInterfaceAttribute",
/// 						"ec2:DeleteNetworkInterface",
/// 						"ec2:DescribeSubnets",
/// 						"ec2:DescribeSecurityGroups",
/// 					},
/// 					"Resource": []string{
/// 						"*",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Effect": "Allow",
/// 					"Action": "sts:AssumeRole",
/// 					"Principal": map[string]string{
/// 						"Service": "quicksight.amazonaws.com",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		vpcConnectionRole, err := iam.NewRole(ctx, "vpc_connection_role", &iam.RoleArgs{
/// 			InlinePolicies: iam.RoleInlinePolicyArray{
/// 				&iam.RoleInlinePolicyArgs{
/// 					Name:   pulumi.String("QuickSightVPCConnectionRolePolicy"),
/// 					Policy: pulumi.String(json0),
/// 				},
/// 			},
/// 			AssumeRolePolicy: pulumi.String(json1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = quicksight.NewVpcConnection(ctx, "example", &quicksight.VpcConnectionArgs{
/// 			VpcConnectionId: pulumi.String("example-connection-id"),
/// 			Name:            pulumi.String("Example Connection"),
/// 			RoleArn:         vpcConnectionRole.Arn,
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				pulumi.String("sg-00000000000000000"),
/// 			},
/// 			SubnetIds: pulumi.StringArray{
/// 				pulumi.String("subnet-00000000000000000"),
/// 				pulumi.String("subnet-00000000000000001"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_iam_role" "vpc_connection_role" {
///   inline_policies {
///     name = "QuickSightVPCConnectionRolePolicy"
///     policy = jsonencode({
///       "Version" = "2012-10-17"
///       "Statement" = [{
///         "Effect"   = "Allow"
///         "Action"   = ["ec2:CreateNetworkInterface", "ec2:ModifyNetworkInterfaceAttribute", "ec2:DeleteNetworkInterface", "ec2:DescribeSubnets", "ec2:DescribeSecurityGroups"]
///         "Resource" = ["*"]
///       }]
///     })
///   }
///   assume_role_policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Effect" = "Allow"
///       "Action" = "sts:AssumeRole"
///       "Principal" = {
///         "Service" = "quicksight.amazonaws.com"
///       }
///     }]
///   })
/// }
/// resource "aws_quicksight_vpcconnection" "example" {
///   vpc_connection_id  = "example-connection-id"
///   name               = "Example Connection"
///   role_arn           = aws_iam_role.vpc_connection_role.arn
///   security_group_ids = ["sg-00000000000000000"]
///   subnet_ids         = ["subnet-00000000000000000", "subnet-00000000000000001"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.inputs.RoleInlinePolicyArgs;
/// import com.pulumi.aws.quicksight.VpcConnection;
/// import com.pulumi.aws.quicksight.VpcConnectionArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var vpcConnectionRole = new Role("vpcConnectionRole", RoleArgs.builder()
///             .inlinePolicies(RoleInlinePolicyArgs.builder()
///                 .name("QuickSightVPCConnectionRolePolicy")
///                 .policy(serializeJson(
///                     jsonObject(
///                         jsonProperty("Version", "2012-10-17"),
///                         jsonProperty("Statement", jsonArray(jsonObject(
///                             jsonProperty("Effect", "Allow"),
///                             jsonProperty("Action", jsonArray(
///                                 "ec2:CreateNetworkInterface",
///                                 "ec2:ModifyNetworkInterfaceAttribute",
///                                 "ec2:DeleteNetworkInterface",
///                                 "ec2:DescribeSubnets",
///                                 "ec2:DescribeSecurityGroups"
///                             )),
///                             jsonProperty("Resource", jsonArray("*"))
///                         )))
///                     )))
///                 .build())
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Action", "sts:AssumeRole"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "quicksight.amazonaws.com")
///                         ))
///                     )))
///                 )))
///             .build());
///
///         var example = new VpcConnection("example", VpcConnectionArgs.builder()
///             .vpcConnectionId("example-connection-id")
///             .name("Example Connection")
///             .roleArn(vpcConnectionRole.arn())
///             .securityGroupIds("sg-00000000000000000")
///             .subnetIds(
///                 "subnet-00000000000000000",
///                 "subnet-00000000000000001")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vpcConnectionRole:
///     type: aws:iam:Role
///     name: vpc_connection_role
///     properties:
///       inlinePolicies:
///         - name: QuickSightVPCConnectionRolePolicy
///           policy:
///             fn::toJSON:
///               Version: 2012-10-17
///               Statement:
///                 - Effect: Allow
///                   Action:
///                     - ec2:CreateNetworkInterface
///                     - ec2:ModifyNetworkInterfaceAttribute
///                     - ec2:DeleteNetworkInterface
///                     - ec2:DescribeSubnets
///                     - ec2:DescribeSecurityGroups
///                   Resource:
///                     - '*'
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Effect: Allow
///               Action: sts:AssumeRole
///               Principal:
///                 Service: quicksight.amazonaws.com
///   example:
///     type: aws:quicksight:VpcConnection
///     properties:
///       vpcConnectionId: example-connection-id
///       name: Example Connection
///       roleArn: ${vpcConnectionRole.arn}
///       securityGroupIds:
///         - sg-00000000000000000
///       subnetIds:
///         - subnet-00000000000000000
///         - subnet-00000000000000001
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import QuickSight VPC connection using the AWS account ID and VPC connection ID separated by commas (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/vpcConnection:VpcConnection example 123456789012,example
/// ```
class VpcConnection extends pulumi.CustomResource {
  /// ARN of the VPC connection.
  late final pulumi.Output<String> arn;
  /// The availability status of the VPC connection. Valid values are `AVAILABLE`, `UNAVAILABLE` or `PARTIALLY_AVAILABLE`.
  late final pulumi.Output<String> availabilityStatus;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> awsAccountId;
  /// A list of IP addresses of DNS resolver endpoints for the VPC connection.
  late final pulumi.Output<List<String>?> dnsResolvers;
  /// The display name for the VPC connection.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The IAM role to associate with the VPC connection.
  late final pulumi.Output<String> roleArn;
  /// A list of security group IDs for the VPC connection.
  late final pulumi.Output<List<String>> securityGroupIds;
  /// A list of subnet IDs for the VPC connection.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<String>> subnetIds;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<VpcConnectionTimeouts?> timeouts;
  /// The ID of the VPC connection.
  late final pulumi.Output<String> vpcConnectionId;

  /// Creates a new [VpcConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcConnection]. {@macro pulumi_quicksight_vpc_connection_vpc_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcConnection(
    String name, {
    VpcConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/vpcConnection:VpcConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    availabilityStatus = registerOutput<String>('availabilityStatus');
    awsAccountId = registerOutput<String>('awsAccountId');
    dnsResolvers = registerOutput<List<String>?>('dnsResolvers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    securityGroupIds = registerOutput<List<String>>('securityGroupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    subnetIds = registerOutput<List<String>>('subnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<VpcConnectionTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpcConnectionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpcConnectionId = registerOutput<String>('vpcConnectionId');
  }

  /// Gets an existing [VpcConnection] resource's state with the given [name] and [id].
  static VpcConnection get(
    String name,
    pulumi.Input<String> id, {
    VpcConnectionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return VpcConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  VpcConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/vpcConnection:VpcConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    availabilityStatus = registerOutput<String>('availabilityStatus');
    awsAccountId = registerOutput<String>('awsAccountId');
    dnsResolvers = registerOutput<List<String>?>('dnsResolvers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    securityGroupIds = registerOutput<List<String>>('securityGroupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    subnetIds = registerOutput<List<String>>('subnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<VpcConnectionTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpcConnectionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpcConnectionId = registerOutput<String>('vpcConnectionId');
  }

  /// Creates a typed reference to an existing [VpcConnection] resource.
  VpcConnection.reference(String urn)
    : super(
        'aws:quicksight/vpcConnection:VpcConnection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    availabilityStatus = registerOutput<String>('availabilityStatus');
    awsAccountId = registerOutput<String>('awsAccountId');
    dnsResolvers = registerOutput<List<String>?>('dnsResolvers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    securityGroupIds = registerOutput<List<String>>('securityGroupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    subnetIds = registerOutput<List<String>>('subnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<VpcConnectionTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpcConnectionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpcConnectionId = registerOutput<String>('vpcConnectionId');
  }
}
