// ignore_for_file: unused_element, unnecessary_cast

class ChannelNamespaceHandlerConfigsOnSubscribeIntegrationLambdaConfig {
  /// Invocation type for a Lambda data source. Valid values: `REQUEST_RESPONSE`, `EVENT`.
  final String? invokeType;

  /// Creates a new [ChannelNamespaceHandlerConfigsOnSubscribeIntegrationLambdaConfig].
  /// [invokeType] Invocation type for a Lambda data source. Valid values: `REQUEST_RESPONSE`, `EVENT`.
  ChannelNamespaceHandlerConfigsOnSubscribeIntegrationLambdaConfig({
    this.invokeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'invokeType': ?invokeType};
  }

  factory ChannelNamespaceHandlerConfigsOnSubscribeIntegrationLambdaConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelNamespaceHandlerConfigsOnSubscribeIntegrationLambdaConfig(
      invokeType: map['invokeType'] == null
          ? null
          : map['invokeType'] as String,
    );
  }
}
