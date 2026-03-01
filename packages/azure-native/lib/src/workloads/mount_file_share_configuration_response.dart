// ignore_for_file: unused_element, unnecessary_cast


/// Gets or sets the file share configuration where the transport directory fileshare already exists, and user wishes to mount the fileshare as a part of the create infra flow.
class MountFileShareConfigurationResponse {
  /// The type of file share config.
  /// Expected value is 'Mount'.
  final String configurationType;
  /// The fileshare resource ID
  final String id;
  /// The private endpoint resource ID
  final String privateEndpointId;

  /// Creates a new [MountFileShareConfigurationResponse].
  /// [configurationType] The type of file share config.
  /// [id] The fileshare resource ID
  /// [privateEndpointId] The private endpoint resource ID
  MountFileShareConfigurationResponse({
    required this.configurationType,
    required this.id,
    required this.privateEndpointId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationType': configurationType,
      'id': id,
      'privateEndpointId': privateEndpointId,
    };
  }

  factory MountFileShareConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return MountFileShareConfigurationResponse(
      configurationType: map['configurationType'] as String,
      id: map['id'] as String,
      privateEndpointId: map['privateEndpointId'] as String,
    );
  }
}

