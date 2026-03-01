import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_attachment_args.dart';

/// > **DEPRECATED:** This resource has been renamed to alicloud.ecs.EcsNetworkInterfaceAttachment from version 1.123.1.
///
/// Provides an Alicloud ECS Elastic Network Interface Attachment as a resource to attach ENI to or detach ENI from ECS Instances.
///
/// For information about Elastic Network Interface and how to use it, see [Elastic Network Interface](https://www.alibabacloud.com/help/doc-detail/58496.html).
///
/// ## Import
///
/// Network Interfaces Attachment resource can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/networkInterfaceAttachment:NetworkInterfaceAttachment eni eni-abc123456789000:i-abc123456789000
/// ```
class NetworkInterfaceAttachment extends pulumi.CustomResource {
  /// The instance ID to attach.
  late final pulumi.Output<String> instanceId;
  late final pulumi.Output<int?> networkCardIndex;
  /// The ENI ID to attach.
  late final pulumi.Output<String> networkInterfaceId;
  late final pulumi.Output<String?> trunkNetworkInstanceId;
  late final pulumi.Output<bool?> waitForNetworkConfigurationReady;

  /// Creates a new [NetworkInterfaceAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkInterfaceAttachment]. {@macro pulumi_vpc_network_interface_attachment_network_interface_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkInterfaceAttachment(
    String name, {
    NetworkInterfaceAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/networkInterfaceAttachment:NetworkInterfaceAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.instanceId = registerOutput<String>('instanceId');
    this.networkCardIndex = registerOutput<int?>('networkCardIndex');
    this.networkInterfaceId = registerOutput<String>('networkInterfaceId');
    this.trunkNetworkInstanceId = registerOutput<String?>('trunkNetworkInstanceId');
    this.waitForNetworkConfigurationReady = registerOutput<bool?>('waitForNetworkConfigurationReady');
  }
}
