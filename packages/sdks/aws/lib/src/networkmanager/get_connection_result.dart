// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getConnection.
class GetConnectionResult {
  /// ARN of the connection.
  final String arn;
  /// ID of the second device in the connection.
  final String connectedDeviceId;
  /// ID of the link for the second device.
  final String connectedLinkId;
  final String connectionId;
  /// Description of the connection.
  final String description;
  /// ID of the first device in the connection.
  final String deviceId;
  final String globalNetworkId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// ID of the link for the first device.
  final String linkId;
  /// Key-value tags for the connection.
  final Map<String, String> tags;

  /// Creates a new [GetConnectionResult].
  /// [arn] ARN of the connection.
  /// [connectedDeviceId] ID of the second device in the connection.
  /// [connectedLinkId] ID of the link for the second device.
  /// [connectionId] Required.
  /// [description] Description of the connection.
  /// [deviceId] ID of the first device in the connection.
  /// [globalNetworkId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [linkId] ID of the link for the first device.
  /// [tags] Key-value tags for the connection.
  const GetConnectionResult({
    required this.arn,
    required this.connectedDeviceId,
    required this.connectedLinkId,
    required this.connectionId,
    required this.description,
    required this.deviceId,
    required this.globalNetworkId,
    required this.id,
    required this.linkId,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'connectedDeviceId': connectedDeviceId,
      'connectedLinkId': connectedLinkId,
      'connectionId': connectionId,
      'description': description,
      'deviceId': deviceId,
      'globalNetworkId': globalNetworkId,
      'id': id,
      'linkId': linkId,
      'tags': tags,
    };
  }

  factory GetConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetConnectionResult(
      arn: map['arn'] as String,
      connectedDeviceId: map['connectedDeviceId'] as String,
      connectedLinkId: map['connectedLinkId'] as String,
      connectionId: map['connectionId'] as String,
      description: map['description'] as String,
      deviceId: map['deviceId'] as String,
      globalNetworkId: map['globalNetworkId'] as String,
      id: map['id'] as String,
      linkId: map['linkId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
