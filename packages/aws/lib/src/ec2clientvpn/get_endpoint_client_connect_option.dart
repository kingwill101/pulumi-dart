// ignore_for_file: unused_element, unnecessary_cast

class GetEndpointClientConnectOption {
  final bool enabled;
  final String lambdaFunctionArn;

  /// Creates a new [GetEndpointClientConnectOption].
  /// [enabled] Required.
  /// [lambdaFunctionArn] Required.
  GetEndpointClientConnectOption({
    required this.enabled,
    required this.lambdaFunctionArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['lambdaFunctionArn'] = lambdaFunctionArn;
    return map;
  }

  factory GetEndpointClientConnectOption.fromMap(Map<String, dynamic> map) {
    return GetEndpointClientConnectOption(
      enabled: map['enabled'] as bool,
      lambdaFunctionArn: map['lambdaFunctionArn'] as String,
    );
  }
}
