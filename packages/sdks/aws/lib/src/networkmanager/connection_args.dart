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
    required this.connectedDeviceId,
    this.connectedLinkId,
    this.description,
    required this.deviceId,
    required this.globalNetworkId,
    this.linkId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedDeviceId': connectedDeviceId,
      'connectedLinkId': ?connectedLinkId,
      'description': ?description,
      'deviceId': deviceId,
      'globalNetworkId': globalNetworkId,
      'linkId': ?linkId,
      'tags': ?tags,
    };
  }

  factory ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs(
      connectedDeviceId: (map['connectedDeviceId'] as String).input(),
      connectedLinkId: map['connectedLinkId'] == null ? null : ((map['connectedLinkId'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      deviceId: (map['deviceId'] as String).input(),
      globalNetworkId: (map['globalNetworkId'] as String).input(),
      linkId: map['linkId'] == null ? null : ((map['linkId'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

