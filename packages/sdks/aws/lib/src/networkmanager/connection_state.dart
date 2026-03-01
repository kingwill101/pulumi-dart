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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? connectedDeviceId,
    pulumi.Output<String>? connectedLinkId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? deviceId,
    pulumi.Output<String>? globalNetworkId,
    pulumi.Output<String>? linkId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      connectedDeviceId = pulumi.Input.asOptionalInput<String>(connectedDeviceId),
      connectedLinkId = pulumi.Input.asOptionalInput<String>(connectedLinkId),
      description = pulumi.Input.asOptionalInput<String>(description),
      deviceId = pulumi.Input.asOptionalInput<String>(deviceId),
      globalNetworkId = pulumi.Input.asOptionalInput<String>(globalNetworkId),
      linkId = pulumi.Input.asOptionalInput<String>(linkId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      connectedDeviceId: map['connectedDeviceId'] == null ? null : pulumi.Output.create<String>(map['connectedDeviceId'] as String),
      connectedLinkId: map['connectedLinkId'] == null ? null : pulumi.Output.create<String>(map['connectedLinkId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      deviceId: map['deviceId'] == null ? null : pulumi.Output.create<String>(map['deviceId'] as String),
      globalNetworkId: map['globalNetworkId'] == null ? null : pulumi.Output.create<String>(map['globalNetworkId'] as String),
      linkId: map['linkId'] == null ? null : pulumi.Output.create<String>(map['linkId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

