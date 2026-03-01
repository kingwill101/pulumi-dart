// ignore_for_file: unused_element, unnecessary_cast

class EndpointClientConnectOptions {
  /// Indicates whether client connect options are enabled. The default is `false` (not enabled).
  final bool? enabled;

  /// The Amazon Resource Name (ARN) of the Lambda function used for connection authorization.
  final String? lambdaFunctionArn;

  /// Creates a new [EndpointClientConnectOptions].
  /// [enabled] Indicates whether client connect options are enabled. The default is `false` (not enabled).
  /// [lambdaFunctionArn] The Amazon Resource Name (ARN) of the Lambda function used for connection authorization.
  EndpointClientConnectOptions({this.enabled, this.lambdaFunctionArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'lambdaFunctionArn': ?lambdaFunctionArn,
    };
  }

  factory EndpointClientConnectOptions.fromMap(Map<String, dynamic> map) {
    return EndpointClientConnectOptions(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      lambdaFunctionArn: map['lambdaFunctionArn'] == null
          ? null
          : map['lambdaFunctionArn'] as String,
    );
  }
}
