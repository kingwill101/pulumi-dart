// ignore_for_file: unused_element, unnecessary_cast


class ChannelNamespaceHandlerConfigsOnPublishIntegrationLambdaConfig {
  /// Invocation type for a Lambda data source. Valid values: `REQUEST_RESPONSE`, `EVENT`.
  final String? invokeType;

  /// Creates a new [ChannelNamespaceHandlerConfigsOnPublishIntegrationLambdaConfig].
  /// [invokeType] Invocation type for a Lambda data source. Valid values: `REQUEST_RESPONSE`, `EVENT`.
  ChannelNamespaceHandlerConfigsOnPublishIntegrationLambdaConfig({
    this.invokeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'invokeType': ?invokeType,
    };
  }

  factory ChannelNamespaceHandlerConfigsOnPublishIntegrationLambdaConfig.fromMap(Map<String, dynamic> map) {
    return ChannelNamespaceHandlerConfigsOnPublishIntegrationLambdaConfig(
      invokeType: map['invokeType'] == null ? null : map['invokeType'] as String,
    );
  }
}

