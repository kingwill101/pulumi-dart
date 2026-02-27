import 'package:pulumi/pulumi.dart';
import 'connection_args6.dart';

/// Manages a Network Manager Connection.
///
/// Use this resource to create a connection between two devices in your global network.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.networkmanager.Connection` using the connection ARN. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/connection:Connection example arn:aws:networkmanager::123456789012:device/global-network-0d47f6t230mz46dy4/connection-07f6fd08867abc123
/// ```
class Connection6 extends CustomResource {
  /// ARN of the connection.
  late final Output<String> arn;

  /// ID of the second device in the connection.
  late final Output<String> connectedDeviceId;

  /// ID of the link for the second device.
  late final Output<String?> connectedLinkId;

  /// Description of the connection.
  late final Output<String?> description;

  /// ID of the first device in the connection.
  late final Output<String> deviceId;

  /// ID of the global network.
  ///
  /// The following arguments are optional:
  late final Output<String> globalNetworkId;

  /// ID of the link for the first device.
  late final Output<String?> linkId;

  /// Key-value tags for the connection. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Connection6(
    String name, {
    ConnectionArgs6? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/connection:Connection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.connectedDeviceId = registerOutput<String>('connectedDeviceId');
    this.connectedLinkId = registerOutput<String?>('connectedLinkId');
    this.description = registerOutput<String?>('description');
    this.deviceId = registerOutput<String>('deviceId');
    this.globalNetworkId = registerOutput<String>('globalNetworkId');
    this.linkId = registerOutput<String?>('linkId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
