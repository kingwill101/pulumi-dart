// ignore_for_file: unused_element, unnecessary_cast


class RegionNetworkEndpointGroupCloudFunction {
  /// A user-defined name of the Cloud Function.
  /// The function name is case-sensitive and must be 1-63 characters long.
  /// Example value: "func1".
  final String? function;
  /// A template to parse function field from a request URL. URL mask allows
  /// for routing to multiple Cloud Functions without having to create
  /// multiple Network Endpoint Groups and backend services.
  /// For example, request URLs "mydomain.com/function1" and "mydomain.com/function2"
  /// can be backed by the same Serverless NEG with URL mask "/". The URL mask
  /// will parse them to { function = "function1" } and { function = "function2" } respectively.
  final String? urlMask;

  /// Creates a new [RegionNetworkEndpointGroupCloudFunction].
  /// [function] A user-defined name of the Cloud Function.
  /// [urlMask] A template to parse function field from a request URL. URL mask allows
  RegionNetworkEndpointGroupCloudFunction({
    this.function,
    this.urlMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'function': ?function,
      'urlMask': ?urlMask,
    };
  }

  factory RegionNetworkEndpointGroupCloudFunction.fromMap(Map<String, dynamic> map) {
    return RegionNetworkEndpointGroupCloudFunction(
      function: map['function'] == null ? null : map['function'] as String,
      urlMask: map['urlMask'] == null ? null : map['urlMask'] as String,
    );
  }
}

