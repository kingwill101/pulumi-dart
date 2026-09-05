// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getConnection.
class GetConnectionResult {
  /// ARN of the connection.
  final String? arn;
  /// ID of the second device in the connection.
  final String? connectedDeviceId;
  /// ID of the link for the second device.
  final String? connectedLinkId;
  final String? connectionId;
  /// Description of the connection.
  final String? description;
  /// ID of the first device in the connection.
  final String? deviceId;
  final String? globalNetworkId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// ID of the link for the first device.
  final String? linkId;
  /// Key-value tags for the connection.
  final Map<String, String>? tags;

  /// Creates a new [GetConnectionResult].
  /// [arn] ARN of the connection.
  /// [connectedDeviceId] ID of the second device in the connection.
  /// [connectedLinkId] ID of the link for the second device.
  /// [connectionId] Optional.
  /// [description] Description of the connection.
  /// [deviceId] ID of the first device in the connection.
  /// [globalNetworkId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [linkId] ID of the link for the first device.
  /// [tags] Key-value tags for the connection.
  const GetConnectionResult({
    this.arn,
    this.connectedDeviceId,
    this.connectedLinkId,
    this.connectionId,
    this.description,
    this.deviceId,
    this.globalNetworkId,
    this.id,
    this.linkId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'connectedDeviceId': ?connectedDeviceId,
      'connectedLinkId': ?connectedLinkId,
      'connectionId': ?connectionId,
      'description': ?description,
      'deviceId': ?deviceId,
      'globalNetworkId': ?globalNetworkId,
      'id': ?id,
      'linkId': ?linkId,
      'tags': ?tags,
    };
  }

  factory GetConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetConnectionResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectedDeviceId: (() { final guardedValue = map['connectedDeviceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectedLinkId: (() { final guardedValue = map['connectedLinkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionId: (() { final guardedValue = map['connectionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deviceId: (() { final guardedValue = map['deviceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      globalNetworkId: (() { final guardedValue = map['globalNetworkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      linkId: (() { final guardedValue = map['linkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
