import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_attachment_args.dart';
import 'network_interface_attachment_state.dart';

/// Attach an Elastic network interface (ENI) resource with EC2 instance.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.ec2.NetworkInterfaceAttachment("test", {
///     instanceId: testAwsInstance.id,
///     networkInterfaceId: testAwsNetworkInterface.id,
///     deviceIndex: 0,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.NetworkInterfaceAttachment("test",
///     instance_id=test_aws_instance["id"],
///     network_interface_id=test_aws_network_interface["id"],
///     device_index=0)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Ec2.NetworkInterfaceAttachment("test", new()
///     {
///         InstanceId = testAwsInstance.Id,
///         NetworkInterfaceId = testAwsNetworkInterface.Id,
///         DeviceIndex = 0,
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
/// 		_, err := ec2.NewNetworkInterfaceAttachment(ctx, "test", &ec2.NetworkInterfaceAttachmentArgs{
/// 			InstanceId:         pulumi.Any(testAwsInstance.Id),
/// 			NetworkInterfaceId: pulumi.Any(testAwsNetworkInterface.Id),
/// 			DeviceIndex:        pulumi.Int(0),
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
/// import com.pulumi.aws.ec2.NetworkInterfaceAttachment;
/// import com.pulumi.aws.ec2.NetworkInterfaceAttachmentArgs;
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
///         var test = new NetworkInterfaceAttachment("test", NetworkInterfaceAttachmentArgs.builder()
///             .instanceId(testAwsInstance.id())
///             .networkInterfaceId(testAwsNetworkInterface.id())
///             .deviceIndex(0)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:ec2:NetworkInterfaceAttachment
///     properties:
///       instanceId: ${testAwsInstance.id}
///       networkInterfaceId: ${testAwsNetworkInterface.id}
///       deviceIndex: 0
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Elastic network interface (ENI) Attachments using its Attachment ID. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/networkInterfaceAttachment:NetworkInterfaceAttachment secondary_nic eni-attach-0a33842b4ec347c4c
/// ```
class NetworkInterfaceAttachmentEc2 extends pulumi.CustomResource {
  /// The ENI Attachment ID.
  late final pulumi.Output<String> attachmentId;
  /// Network interface index (int).
  late final pulumi.Output<int> deviceIndex;
  /// Instance ID to attach.
  late final pulumi.Output<String> instanceId;
  /// Index of the network card. Specify a value greater than 0 when using multiple network cards, which are supported by [some instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#network-cards). The default is 0.
  late final pulumi.Output<int> networkCardIndex;
  /// ENI ID to attach.
  late final pulumi.Output<String> networkInterfaceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The status of the Network Interface Attachment.
  late final pulumi.Output<String> status;

  /// Creates a new [NetworkInterfaceAttachmentEc2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkInterfaceAttachmentEc2]. {@macro pulumi_ec2_network_interface_attachment_network_interface_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkInterfaceAttachmentEc2(
    String name, {
    NetworkInterfaceAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/networkInterfaceAttachment:NetworkInterfaceAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.attachmentId = registerOutput<String>('attachmentId');
    this.deviceIndex = registerOutput<int>('deviceIndex');
    this.instanceId = registerOutput<String>('instanceId');
    this.networkCardIndex = registerOutput<int>('networkCardIndex');
    this.networkInterfaceId = registerOutput<String>('networkInterfaceId');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [NetworkInterfaceAttachmentEc2] resource's state with the given [name] and [id].
  static NetworkInterfaceAttachmentEc2 get(
    String name,
    pulumi.Input<String> id, {
    NetworkInterfaceAttachmentState? state,
  }) {
    return NetworkInterfaceAttachmentEc2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkInterfaceAttachmentEc2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/networkInterfaceAttachment:NetworkInterfaceAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.attachmentId = registerOutput<String>('attachmentId');
    this.deviceIndex = registerOutput<int>('deviceIndex');
    this.instanceId = registerOutput<String>('instanceId');
    this.networkCardIndex = registerOutput<int>('networkCardIndex');
    this.networkInterfaceId = registerOutput<String>('networkInterfaceId');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
  }
}
