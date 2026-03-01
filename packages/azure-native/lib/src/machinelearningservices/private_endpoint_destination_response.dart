// ignore_for_file: unused_element, unnecessary_cast


/// Private Endpoint destination for a Private Endpoint Outbound Rule for the managed network of a machine learning workspace.
class PrivateEndpointDestinationResponse {
  final String? serviceResourceId;
  final bool? sparkEnabled;
  /// Type of a managed network Outbound Rule of a machine learning workspace.
  final String? sparkStatus;
  final String? subresourceTarget;

  /// Creates a new [PrivateEndpointDestinationResponse].
  /// [serviceResourceId] Optional.
  /// [sparkEnabled] Optional.
  /// [sparkStatus] Type of a managed network Outbound Rule of a machine learning workspace.
  /// [subresourceTarget] Optional.
  PrivateEndpointDestinationResponse({
    this.serviceResourceId,
    this.sparkEnabled,
    this.sparkStatus,
    this.subresourceTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceResourceId': ?serviceResourceId,
      'sparkEnabled': ?sparkEnabled,
      'sparkStatus': ?sparkStatus,
      'subresourceTarget': ?subresourceTarget,
    };
  }

  factory PrivateEndpointDestinationResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointDestinationResponse(
      serviceResourceId: map['serviceResourceId'] == null ? null : map['serviceResourceId'] as String,
      sparkEnabled: map['sparkEnabled'] == null ? null : map['sparkEnabled'] as bool,
      sparkStatus: map['sparkStatus'] == null ? null : map['sparkStatus'] as String,
      subresourceTarget: map['subresourceTarget'] == null ? null : map['subresourceTarget'] as String,
    );
  }
}

