// ignore_for_file: unused_element, unnecessary_cast


/// Batch endpoint default values
class BatchEndpointDefaultsResponse {
  /// Name of the deployment that will be default for the endpoint.
  /// This deployment will end up getting 100% traffic when the endpoint scoring URL is invoked.
  final String? deploymentName;

  /// Creates a new [BatchEndpointDefaultsResponse].
  /// [deploymentName] Name of the deployment that will be default for the endpoint.
  BatchEndpointDefaultsResponse({
    this.deploymentName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentName': ?deploymentName,
    };
  }

  factory BatchEndpointDefaultsResponse.fromMap(Map<String, dynamic> map) {
    return BatchEndpointDefaultsResponse(
      deploymentName: map['deploymentName'] == null ? null : map['deploymentName'] as String,
    );
  }
}

