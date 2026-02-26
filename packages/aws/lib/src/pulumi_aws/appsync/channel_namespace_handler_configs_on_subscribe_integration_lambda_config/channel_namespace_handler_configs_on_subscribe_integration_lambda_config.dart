// ignore_for_file: unused_element, unnecessary_cast

class ChannelNamespaceHandlerConfigsOnSubscribeIntegrationLambdaConfig {
  /// Invocation type for a Lambda data source. Valid values: `REQUEST_RESPONSE`, `EVENT`.
  final String? invokeType;

  ChannelNamespaceHandlerConfigsOnSubscribeIntegrationLambdaConfig({
    this.invokeType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final invokeTypeValue = invokeType;
    if (invokeTypeValue != null) {
      map['invokeType'] = invokeTypeValue;
    }
    return map;
  }

  factory ChannelNamespaceHandlerConfigsOnSubscribeIntegrationLambdaConfig.fromMap(
      Map<String, dynamic> map) {
    return ChannelNamespaceHandlerConfigsOnSubscribeIntegrationLambdaConfig(
      invokeType:
          map['invokeType'] == null ? null : map['invokeType'] as String,
    );
  }
}
