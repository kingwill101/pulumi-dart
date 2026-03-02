// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Connection resources.
class ConnectionState {
  /// ARN of the connection.
  final pulumi.Input<String>? arn;
  /// ID of the second device in the connection.
  final pulumi.Input<String>? connectedDeviceId;
  /// ID of the link for the second device.
  final pulumi.Input<String>? connectedLinkId;
  /// Description of the connection.
  final pulumi.Input<String>? description;
  /// ID of the first device in the connection.
  final pulumi.Input<String>? deviceId;
  /// ID of the global network.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? globalNetworkId;
  /// ID of the link for the first device.
  final pulumi.Input<String>? linkId;
  /// Key-value tags for the connection. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ConnectionState].
  /// [arn] ARN of the connection.
  /// [connectedDeviceId] ID of the second device in the connection.
  /// [connectedLinkId] ID of the link for the second device.
  /// [description] Description of the connection.
  /// [deviceId] ID of the first device in the connection.
  /// [globalNetworkId] ID of the global network.
  /// [linkId] ID of the link for the first device.
  /// [tags] Key-value tags for the connection. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ConnectionState({
    this.arn,
    this.connectedDeviceId,
    this.connectedLinkId,
    this.description,
    this.deviceId,
    this.globalNetworkId,
    this.linkId,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'connectedDeviceId': ?connectedDeviceId,
      'connectedLinkId': ?connectedLinkId,
      'description': ?description,
      'deviceId': ?deviceId,
      'globalNetworkId': ?globalNetworkId,
      'linkId': ?linkId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ConnectionState.fromMap(Map<String, dynamic> map) {
    return ConnectionState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      connectedDeviceId: map['connectedDeviceId'] == null ? null : (map['connectedDeviceId'] as String).input(),
      connectedLinkId: map['connectedLinkId'] == null ? null : (map['connectedLinkId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      deviceId: map['deviceId'] == null ? null : (map['deviceId'] as String).input(),
      globalNetworkId: map['globalNetworkId'] == null ? null : (map['globalNetworkId'] as String).input(),
      linkId: map['linkId'] == null ? null : (map['linkId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

