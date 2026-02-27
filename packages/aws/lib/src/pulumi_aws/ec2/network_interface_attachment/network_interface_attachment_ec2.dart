import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_attachment_args.dart';

/// Attach an Elastic network interface (ENI) resource with EC2 instance.
///
/// ## Example Usage
///
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
}
