// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointClientConnectOptions {
  /// Indicates whether client connect options are enabled. The default is `false` (not enabled).
  final pulumi.Input<bool>? enabled;
  /// The Amazon Resource Name (ARN) of the Lambda function used for connection authorization.
  final pulumi.Input<String>? lambdaFunctionArn;

  /// Creates a new [EndpointClientConnectOptions].
  /// [enabled] Indicates whether client connect options are enabled. The default is `false` (not enabled).
  /// [lambdaFunctionArn] The Amazon Resource Name (ARN) of the Lambda function used for connection authorization.
  EndpointClientConnectOptions({
    this.enabled,
    this.lambdaFunctionArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'lambdaFunctionArn': ?lambdaFunctionArn,
    };
  }

  factory EndpointClientConnectOptions.fromMap(Map<String, dynamic> map) {
    return EndpointClientConnectOptions(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lambdaFunctionArn: (() { final guardedValue = map['lambdaFunctionArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

