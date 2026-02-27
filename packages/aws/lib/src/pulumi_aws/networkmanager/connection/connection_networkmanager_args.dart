// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Connection.
class ConnectionNetworkmanagerArgs {
  /// ID of the second device in the connection.
  final pulumi.Input<String> connectedDeviceId;

  /// ID of the link for the second device.
  final pulumi.Input<String>? connectedLinkId;

  /// Description of the connection.
  final pulumi.Input<String>? description;

  /// ID of the first device in the connection.
  final pulumi.Input<String> deviceId;

  /// ID of the global network.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> globalNetworkId;

  /// ID of the link for the first device.
  final pulumi.Input<String>? linkId;

  /// Key-value tags for the connection. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  ConnectionNetworkmanagerArgs({
    required this.connectedDeviceId,
    this.connectedLinkId,
    this.description,
    required this.deviceId,
    required this.globalNetworkId,
    this.linkId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectedDeviceId'] = connectedDeviceId;
    final connectedLinkIdValue = connectedLinkId;
    if (connectedLinkIdValue != null) {
      map['connectedLinkId'] = connectedLinkIdValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['deviceId'] = deviceId;
    map['globalNetworkId'] = globalNetworkId;
    final linkIdValue = linkId;
    if (linkIdValue != null) {
      map['linkId'] = linkIdValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ConnectionNetworkmanagerArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionNetworkmanagerArgs(
      connectedDeviceId: pulumi.Input.asInput<String>(map['connectedDeviceId']),
      connectedLinkId:
          pulumi.Input.asOptionalInput<String>(map['connectedLinkId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      deviceId: pulumi.Input.asInput<String>(map['deviceId']),
      globalNetworkId: pulumi.Input.asInput<String>(map['globalNetworkId']),
      linkId: pulumi.Input.asOptionalInput<String>(map['linkId']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
