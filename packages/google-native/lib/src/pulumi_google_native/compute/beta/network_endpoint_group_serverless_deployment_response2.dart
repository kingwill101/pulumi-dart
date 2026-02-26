// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for a serverless network endpoint group (NEG). The platform must be provided. Note: The target backend service must be in the same project and located in the same region as the Serverless NEG.
class NetworkEndpointGroupServerlessDeploymentResponse2 {
  /// The platform of the backend target(s) of this NEG. The only supported value is API Gateway: apigateway.googleapis.com.
  final String platform;

  /// The user-defined name of the workload/instance. This value must be provided explicitly or in the urlMask. The resource identified by this value is platform-specific and is as follows: 1. API Gateway: The gateway ID 2. App Engine: The service name 3. Cloud Functions: The function name 4. Cloud Run: The service name
  final String resource;

  /// A template to parse platform-specific fields from a request URL. URL mask allows for routing to multiple resources on the same serverless platform without having to create multiple Network Endpoint Groups and backend resources. The fields parsed by this template are platform-specific and are as follows: 1. API Gateway: The gateway ID 2. App Engine: The service and version 3. Cloud Functions: The function name 4. Cloud Run: The service and tag
  final String urlMask;

  /// The optional resource version. The version identified by this value is platform-specific and is follows: 1. API Gateway: Unused 2. App Engine: The service version 3. Cloud Functions: Unused 4. Cloud Run: The service tag
  final String version;

  NetworkEndpointGroupServerlessDeploymentResponse2({
    required this.platform,
    required this.resource,
    required this.urlMask,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['platform'] = platform;
    map['resource'] = resource;
    map['urlMask'] = urlMask;
    map['version'] = version;
    return map;
  }

  factory NetworkEndpointGroupServerlessDeploymentResponse2.fromMap(
      Map<String, dynamic> map) {
    return NetworkEndpointGroupServerlessDeploymentResponse2(
      platform: map['platform'] as String,
      resource: map['resource'] as String,
      urlMask: map['urlMask'] as String,
      version: map['version'] as String,
    );
  }
}
