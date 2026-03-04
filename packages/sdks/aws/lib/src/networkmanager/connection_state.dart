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
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      connectedDeviceId: (() {
        final guardedValue = map['connectedDeviceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      connectedLinkId: (() {
        final guardedValue = map['connectedLinkId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deviceId: (() {
        final guardedValue = map['deviceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      globalNetworkId: (() {
        final guardedValue = map['globalNetworkId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      linkId: (() {
        final guardedValue = map['linkId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
