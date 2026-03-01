// ignore_for_file: unused_element, unnecessary_cast


/// The endpoint used by clients to access their configuration.
class DataCollectionEndpointResponseConfigurationAccess {
  /// The endpoint. This property is READ-ONLY.
  final String endpoint;

  /// Creates a new [DataCollectionEndpointResponseConfigurationAccess].
  /// [endpoint] The endpoint. This property is READ-ONLY.
  DataCollectionEndpointResponseConfigurationAccess({
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
    };
  }

  factory DataCollectionEndpointResponseConfigurationAccess.fromMap(Map<String, dynamic> map) {
    return DataCollectionEndpointResponseConfigurationAccess(
      endpoint: map['endpoint'] as String,
    );
  }
}

