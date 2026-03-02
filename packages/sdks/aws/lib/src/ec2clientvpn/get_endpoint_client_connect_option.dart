// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEndpointClientConnectOption {
  final pulumi.Input<bool> enabled;
  final pulumi.Input<String> lambdaFunctionArn;

  /// Creates a new [GetEndpointClientConnectOption].
  /// [enabled] Required.
  /// [lambdaFunctionArn] Required.
  GetEndpointClientConnectOption({
    required this.enabled,
    required this.lambdaFunctionArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'lambdaFunctionArn': lambdaFunctionArn,
    };
  }

  factory GetEndpointClientConnectOption.fromMap(Map<String, dynamic> map) {
    return GetEndpointClientConnectOption(
      enabled: (map['enabled'] as bool).input(),
      lambdaFunctionArn: (map['lambdaFunctionArn'] as String).input(),
    );
  }
}

