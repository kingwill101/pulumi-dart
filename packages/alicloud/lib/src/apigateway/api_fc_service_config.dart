// ignore_for_file: unused_element, unnecessary_cast


class ApiFcServiceConfig {
  /// RAM role arn attached to the Function Compute service. This governs both who / what can invoke your Function, as well as what resources our Function has access to. See [User Permissions](https://www.alibabacloud.com/help/doc-detail/52885.htm) for more details.
  final String arnRole;
  /// The base url of function compute service. Required if `function_type` is `HttpTrigger`.
  final String? functionBaseUrl;
  /// The function name of function compute service. Required if `function_type` is `FCEvent`.
  final String? functionName;
  /// The type of function compute service. Supports values of `FCEvent`,`HttpTrigger`. Default value: `FCEvent`.
  final String? functionType;
  /// The function compute version of function compute service. Supports values of `2.0`, `3.0`. Default value: `2.0`.
  final String? functionVersion;
  /// The http method of function compute service. Required if `function_type` is `HttpTrigger`.
  final String? method;
  /// Whether to filter path in `function_base_url`. Optional if `function_type` is `HttpTrigger`.
  final bool? onlyBusinessPath;
  /// The path of function compute service. Required if `function_type` is `HttpTrigger`.
  final String? path;
  /// The qualifier of function name of compute service.
  final String? qualifier;
  /// The region that the function compute service belongs to.
  final String region;
  /// The service name of function compute service. Required if `function_type` is `FCEvent` and `function_version` is `2.0`.
  final String? serviceName;
  /// Backend service time-out time; unit: millisecond.
  final int timeout;

  /// Creates a new [ApiFcServiceConfig].
  /// [arnRole] RAM role arn attached to the Function Compute service. This governs both who / what can invoke your Function, as well as what resources our Function has access to. See [User Permissions](https://www.alibabacloud.com/help/doc-detail/52885.htm) for more details.
  /// [functionBaseUrl] The base url of function compute service. Required if `function_type` is `HttpTrigger`.
  /// [functionName] The function name of function compute service. Required if `function_type` is `FCEvent`.
  /// [functionType] The type of function compute service. Supports values of `FCEvent`,`HttpTrigger`. Default value: `FCEvent`.
  /// [functionVersion] The function compute version of function compute service. Supports values of `2.0`, `3.0`. Default value: `2.0`.
  /// [method] The http method of function compute service. Required if `function_type` is `HttpTrigger`.
  /// [onlyBusinessPath] Whether to filter path in `function_base_url`. Optional if `function_type` is `HttpTrigger`.
  /// [path] The path of function compute service. Required if `function_type` is `HttpTrigger`.
  /// [qualifier] The qualifier of function name of compute service.
  /// [region] The region that the function compute service belongs to.
  /// [serviceName] The service name of function compute service. Required if `function_type` is `FCEvent` and `function_version` is `2.0`.
  /// [timeout] Backend service time-out time; unit: millisecond.
  ApiFcServiceConfig({
    required this.arnRole,
    this.functionBaseUrl,
    this.functionName,
    this.functionType,
    this.functionVersion,
    this.method,
    this.onlyBusinessPath,
    this.path,
    this.qualifier,
    required this.region,
    this.serviceName,
    required this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arnRole': arnRole,
      'functionBaseUrl': ?functionBaseUrl,
      'functionName': ?functionName,
      'functionType': ?functionType,
      'functionVersion': ?functionVersion,
      'method': ?method,
      'onlyBusinessPath': ?onlyBusinessPath,
      'path': ?path,
      'qualifier': ?qualifier,
      'region': region,
      'serviceName': ?serviceName,
      'timeout': timeout,
    };
  }

  factory ApiFcServiceConfig.fromMap(Map<String, dynamic> map) {
    return ApiFcServiceConfig(
      arnRole: map['arnRole'] as String,
      functionBaseUrl: map['functionBaseUrl'] == null ? null : map['functionBaseUrl'] as String,
      functionName: map['functionName'] == null ? null : map['functionName'] as String,
      functionType: map['functionType'] == null ? null : map['functionType'] as String,
      functionVersion: map['functionVersion'] == null ? null : map['functionVersion'] as String,
      method: map['method'] == null ? null : map['method'] as String,
      onlyBusinessPath: map['onlyBusinessPath'] == null ? null : map['onlyBusinessPath'] as bool,
      path: map['path'] == null ? null : map['path'] as String,
      qualifier: map['qualifier'] == null ? null : map['qualifier'] as String,
      region: map['region'] as String,
      serviceName: map['serviceName'] == null ? null : map['serviceName'] as String,
      timeout: map['timeout'] as int,
    );
  }
}

