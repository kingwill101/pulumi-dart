// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiFcServiceConfig {
  /// RAM role arn attached to the Function Compute service. This governs both who / what can invoke your Function, as well as what resources our Function has access to. See [User Permissions](https://www.alibabacloud.com/help/doc-detail/52885.htm) for more details.
  final pulumi.Input<String> arnRole;
  /// The base url of function compute service. Required if `function_type` is `HttpTrigger`.
  final pulumi.Input<String>? functionBaseUrl;
  /// The function name of function compute service. Required if `function_type` is `FCEvent`.
  final pulumi.Input<String>? functionName;
  /// The type of function compute service. Supports values of `FCEvent`,`HttpTrigger`. Default value: `FCEvent`.
  final pulumi.Input<String>? functionType;
  /// The function compute version of function compute service. Supports values of `2.0`, `3.0`. Default value: `2.0`.
  final pulumi.Input<String>? functionVersion;
  /// The http method of function compute service. Required if `function_type` is `HttpTrigger`.
  final pulumi.Input<String>? method;
  /// Whether to filter path in `function_base_url`. Optional if `function_type` is `HttpTrigger`.
  final pulumi.Input<bool>? onlyBusinessPath;
  /// The path of function compute service. Required if `function_type` is `HttpTrigger`.
  final pulumi.Input<String>? path;
  /// The qualifier of function name of compute service.
  final pulumi.Input<String>? qualifier;
  /// The region that the function compute service belongs to.
  final pulumi.Input<String> region;
  /// The service name of function compute service. Required if `function_type` is `FCEvent` and `function_version` is `2.0`.
  final pulumi.Input<String>? serviceName;
  /// Backend service time-out time; unit: millisecond.
  final pulumi.Input<int> timeout;

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
  const ApiFcServiceConfig({
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
      arnRole: pulumi.Input.fromValue(map['arnRole'] as String),
      functionBaseUrl: (() { final guardedValue = map['functionBaseUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionName: (() { final guardedValue = map['functionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionType: (() { final guardedValue = map['functionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionVersion: (() { final guardedValue = map['functionVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onlyBusinessPath: (() { final guardedValue = map['onlyBusinessPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      qualifier: (() { final guardedValue = map['qualifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeout: pulumi.Input.fromValue(map['timeout'] as int),
    );
  }
}

