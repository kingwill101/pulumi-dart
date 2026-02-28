// ignore_for_file: unused_element, unnecessary_cast

class GetRegionNetworkEndpointGroupCloudFunction {
  /// A user-defined name of the Cloud Function.
  /// The function name is case-sensitive and must be 1-63 characters long.
  /// Example value: "func1".
  final String function;

  /// A template to parse function field from a request URL. URL mask allows
  /// for routing to multiple Cloud Functions without having to create
  /// multiple Network Endpoint Groups and backend services.
  ///
  /// For example, request URLs "mydomain.com/function1" and "mydomain.com/function2"
  /// can be backed by the same Serverless NEG with URL mask "/". The URL mask
  /// will parse them to { function = "function1" } and { function = "function2" } respectively.
  final String urlMask;

  /// Creates a new [GetRegionNetworkEndpointGroupCloudFunction].
  /// [function] A user-defined name of the Cloud Function.
  /// [urlMask] A template to parse function field from a request URL. URL mask allows
  GetRegionNetworkEndpointGroupCloudFunction({
    required this.function,
    required this.urlMask,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['function'] = function;
    map['urlMask'] = urlMask;
    return map;
  }

  factory GetRegionNetworkEndpointGroupCloudFunction.fromMap(
      Map<String, dynamic> map) {
    return GetRegionNetworkEndpointGroupCloudFunction(
      function: map['function'] as String,
      urlMask: map['urlMask'] as String,
    );
  }
}
