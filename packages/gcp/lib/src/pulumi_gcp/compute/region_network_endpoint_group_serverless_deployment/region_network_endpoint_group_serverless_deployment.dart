// ignore_for_file: unused_element, unnecessary_cast

class RegionNetworkEndpointGroupServerlessDeployment {
  /// The platform of the NEG backend target(s). Possible values:
  /// API Gateway: apigateway.googleapis.com
  final String platform;

  /// The user-defined name of the workload/instance. This value must be provided explicitly or in the urlMask.
  /// The resource identified by this value is platform-specific and is as follows: API Gateway: The gateway ID, App Engine: The service name,
  /// Cloud Functions: The function name, Cloud Run: The service name
  final String? resource;

  /// A template to parse platform-specific fields from a request URL. URL mask allows for routing to multiple resources
  /// on the same serverless platform without having to create multiple Network Endpoint Groups and backend resources.
  /// The fields parsed by this template are platform-specific and are as follows: API Gateway: The gateway ID,
  /// App Engine: The service and version, Cloud Functions: The function name, Cloud Run: The service and tag
  final String? urlMask;

  /// The optional resource version. The version identified by this value is platform-specific and is follows:
  /// API Gateway: Unused, App Engine: The service version, Cloud Functions: Unused, Cloud Run: The service tag
  final String? version;

  RegionNetworkEndpointGroupServerlessDeployment({
    required this.platform,
    this.resource,
    this.urlMask,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['platform'] = platform;
    final resourceValue = resource;
    if (resourceValue != null) {
      map['resource'] = resourceValue;
    }
    final urlMaskValue = urlMask;
    if (urlMaskValue != null) {
      map['urlMask'] = urlMaskValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory RegionNetworkEndpointGroupServerlessDeployment.fromMap(
      Map<String, dynamic> map) {
    return RegionNetworkEndpointGroupServerlessDeployment(
      platform: map['platform'] as String,
      resource: map['resource'] == null ? null : map['resource'] as String,
      urlMask: map['urlMask'] == null ? null : map['urlMask'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
