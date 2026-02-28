// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanager_connection_connection_args_doc}
/// The set of arguments for Connection.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_connection_connection_args_doc}
class ConnectionArgs {
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

  /// Creates a new [ConnectionArgs].
  /// [connectedDeviceId] ID of the second device in the connection.
  /// [connectedLinkId] ID of the link for the second device.
  /// [description] Description of the connection.
  /// [deviceId] ID of the first device in the connection.
  /// [globalNetworkId] ID of the global network.
  /// [linkId] ID of the link for the first device.
  /// [tags] Key-value tags for the connection. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ConnectionArgs({
    required String connectedDeviceId,
    String? connectedLinkId,
    String? description,
    required String deviceId,
    required String globalNetworkId,
    String? linkId,
    Map<String, String>? tags,
  })  : connectedDeviceId = pulumi.Input.asInput<String>(connectedDeviceId),
        connectedLinkId = pulumi.Input.asOptionalInput<String>(connectedLinkId),
        description = pulumi.Input.asOptionalInput<String>(description),
        deviceId = pulumi.Input.asInput<String>(deviceId),
        globalNetworkId = pulumi.Input.asInput<String>(globalNetworkId),
        linkId = pulumi.Input.asOptionalInput<String>(linkId),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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

  factory ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs(
      connectedDeviceId: map['connectedDeviceId'] as String,
      connectedLinkId: map['connectedLinkId'] == null
          ? null
          : map['connectedLinkId'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      deviceId: map['deviceId'] as String,
      globalNetworkId: map['globalNetworkId'] as String,
      linkId: map['linkId'] == null ? null : map['linkId'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
