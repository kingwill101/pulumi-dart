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
    required pulumi.Output<String> connectedDeviceId,
    pulumi.Output<String>? connectedLinkId,
    pulumi.Output<String>? description,
    required pulumi.Output<String> deviceId,
    required pulumi.Output<String> globalNetworkId,
    pulumi.Output<String>? linkId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      connectedDeviceId = pulumi.Input.asInput<String>(connectedDeviceId),
      connectedLinkId = pulumi.Input.asOptionalInput<String>(connectedLinkId),
      description = pulumi.Input.asOptionalInput<String>(description),
      deviceId = pulumi.Input.asInput<String>(deviceId),
      globalNetworkId = pulumi.Input.asInput<String>(globalNetworkId),
      linkId = pulumi.Input.asOptionalInput<String>(linkId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      connectedDeviceId: pulumi.Output.create<String>(map['connectedDeviceId'] as String),
      connectedLinkId: map['connectedLinkId'] == null ? null : pulumi.Output.create<String>(map['connectedLinkId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      deviceId: pulumi.Output.create<String>(map['deviceId'] as String),
      globalNetworkId: pulumi.Output.create<String>(map['globalNetworkId'] as String),
      linkId: map['linkId'] == null ? null : pulumi.Output.create<String>(map['linkId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

