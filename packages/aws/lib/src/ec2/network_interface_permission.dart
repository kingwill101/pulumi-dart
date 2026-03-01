import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_permission_args.dart';
import 'network_interface_permission_timeouts.dart';

/// Grant cross-account access to an Elastic network interface (ENI).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.NetworkInterface("example", {
///     subnetId: exampleAwsSubnet.id,
///     privateIps: ["10.0.0.50"],
///     securityGroups: [exampleAwsSecurityGroup.id],
///     attachments: [{
///         instance: exampleAwsInstance.id,
///         deviceIndex: 1,
///     }],
/// });
/// const exampleNetworkInterfacePermission = new aws.ec2.NetworkInterfacePermission("example", {
///     networkInterfaceId: example.id,
///     awsAccountId: "123456789012",
///     permission: "INSTANCE-ATTACH",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.NetworkInterface("example",
///     subnet_id=example_aws_subnet["id"],
///     private_ips=["10.0.0.50"],
///     security_groups=[example_aws_security_group["id"]],
///     attachments=[{
///         "instance": example_aws_instance["id"],
///         "device_index": 1,
///     }])
/// example_network_interface_permission = aws.ec2.NetworkInterfacePermission("example",
///     network_interface_id=example.id,
///     aws_account_id="123456789012",
///     permission="INSTANCE-ATTACH")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.NetworkInterface("example", new()
///     {
///         SubnetId = exampleAwsSubnet.Id,
///         PrivateIps = new[]
///         {
///             "10.0.0.50",
///         },
///         SecurityGroups = new[]
///         {
///             exampleAwsSecurityGroup.Id,
///         },
///         Attachments = new[]
///         {
///             new Aws.Ec2.Inputs.NetworkInterfaceAttachmentArgs
///             {
///                 Instance = exampleAwsInstance.Id,
///                 DeviceIndex = 1,
///             },
///         },
///     });
///
///     var exampleNetworkInterfacePermission = new Aws.Ec2.NetworkInterfacePermission("example", new()
///     {
///         NetworkInterfaceId = example.Id,
///         AwsAccountId = "123456789012",
///         Permission = "INSTANCE-ATTACH",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ec2.NewNetworkInterface(ctx, "example", &ec2.NetworkInterfaceArgs{
/// 			SubnetId: pulumi.Any(exampleAwsSubnet.Id),
/// 			PrivateIps: pulumi.StringArray{
/// 				pulumi.String("10.0.0.50"),
/// 			},
/// 			SecurityGroups: pulumi.StringArray{
/// 				exampleAwsSecurityGroup.Id,
/// 			},
/// 			Attachments: ec2.NetworkInterfaceAttachmentTypeArray{
/// 				&ec2.NetworkInterfaceAttachmentTypeArgs{
/// 					Instance:    pulumi.Any(exampleAwsInstance.Id),
/// 					DeviceIndex: pulumi.Int(1),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewNetworkInterfacePermission(ctx, "example", &ec2.NetworkInterfacePermissionArgs{
/// 			NetworkInterfaceId: example.ID(),
/// 			AwsAccountId:       pulumi.String("123456789012"),
/// 			Permission:         pulumi.String("INSTANCE-ATTACH"),
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
/// import com.pulumi.aws.ec2.NetworkInterface;
/// import com.pulumi.aws.ec2.NetworkInterfaceArgs;
/// import com.pulumi.aws.ec2.inputs.NetworkInterfaceAttachmentArgs;
/// import com.pulumi.aws.ec2.NetworkInterfacePermission;
/// import com.pulumi.aws.ec2.NetworkInterfacePermissionArgs;
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
///         var example = new NetworkInterface("example", NetworkInterfaceArgs.builder()
///             .subnetId(exampleAwsSubnet.id())
///             .privateIps("10.0.0.50")
///             .securityGroups(exampleAwsSecurityGroup.id())
///             .attachments(NetworkInterfaceAttachmentArgs.builder()
///                 .instance(exampleAwsInstance.id())
///                 .deviceIndex(1)
///                 .build())
///             .build());
///
///         var exampleNetworkInterfacePermission = new NetworkInterfacePermission("exampleNetworkInterfacePermission", NetworkInterfacePermissionArgs.builder()
///             .networkInterfaceId(example.id())
///             .awsAccountId("123456789012")
///             .permission("INSTANCE-ATTACH")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:NetworkInterface
///     properties:
///       subnetId: ${exampleAwsSubnet.id}
///       privateIps:
///         - 10.0.0.50
///       securityGroups:
///         - ${exampleAwsSecurityGroup.id}
///       attachments:
///         - instance: ${exampleAwsInstance.id}
///           deviceIndex: 1
///   exampleNetworkInterfacePermission:
///     type: aws:ec2:NetworkInterfacePermission
///     name: example
///     properties:
///       networkInterfaceId: ${example.id}
///       awsAccountId: '123456789012'
///       permission: INSTANCE-ATTACH
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Network Interface Permissions using the `network_interface_permission_id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/networkInterfacePermission:NetworkInterfacePermission example eni-perm-056ad97ce2ac377ed
/// ```
class NetworkInterfacePermission extends pulumi.CustomResource {
  /// The Amazon Web Services account ID.
  late final pulumi.Output<String> awsAccountId;

  /// The ID of the network interface.
  late final pulumi.Output<String> networkInterfaceId;

  /// ENI permission ID.
  late final pulumi.Output<String> networkInterfacePermissionId;

  /// The type of permission to grant. Valid values are `INSTANCE-ATTACH` or `EIP-ASSOCIATE`.
  late final pulumi.Output<String> permission;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<NetworkInterfacePermissionTimeouts?> timeouts;

  /// Creates a new [NetworkInterfacePermission].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkInterfacePermission]. {@macro pulumi_ec2_network_interface_permission_network_interface_permission_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkInterfacePermission(
    String name, {
    NetworkInterfacePermissionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2/networkInterfacePermission:NetworkInterfacePermission',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.networkInterfaceId = registerOutput<String>('networkInterfaceId');
    this.networkInterfacePermissionId = registerOutput<String>(
      'networkInterfacePermissionId',
    );
    this.permission = registerOutput<String>('permission');
    this.region = registerOutput<String>('region');
    this.timeouts = registerOutput<NetworkInterfacePermissionTimeouts?>(
      'timeouts',
    );
  }
}
