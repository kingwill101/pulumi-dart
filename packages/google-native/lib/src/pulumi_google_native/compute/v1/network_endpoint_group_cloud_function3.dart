// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for a Cloud Function network endpoint group (NEG). The function must be provided explicitly or in the URL mask. Note: Cloud Function must be in the same project and located in the same region as the Serverless NEG.
class NetworkEndpointGroupCloudFunction3 {
  /// A user-defined name of the Cloud Function. The function name is case-sensitive and must be 1-63 characters long. Example value: "func1".
  final String? function;

  /// A template to parse function field from a request URL. URL mask allows for routing to multiple Cloud Functions without having to create multiple Network Endpoint Groups and backend services. For example, request URLs " mydomain.com/function1" and "mydomain.com/function2" can be backed by the same Serverless NEG with URL mask "/<function>". The URL mask will parse them to { function = "function1" } and { function = "function2" } respectively.
  final String? urlMask;

  NetworkEndpointGroupCloudFunction3({
    this.function,
    this.urlMask,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final functionValue = function;
    if (functionValue != null) {
      map['function'] = functionValue;
    }
    final urlMaskValue = urlMask;
    if (urlMaskValue != null) {
      map['urlMask'] = urlMaskValue;
    }
    return map;
  }

  factory NetworkEndpointGroupCloudFunction3.fromMap(Map<String, dynamic> map) {
    return NetworkEndpointGroupCloudFunction3(
      function: map['function'] == null ? null : map['function'] as String,
      urlMask: map['urlMask'] == null ? null : map['urlMask'] as String,
    );
  }
}
