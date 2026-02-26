// ignore_for_file: unused_element, unnecessary_cast

class ChannelNamespaceHandlerConfigsOnPublishIntegrationLambdaConfig {
  /// Invocation type for a Lambda data source. Valid values: `REQUEST_RESPONSE`, `EVENT`.
  final String? invokeType;

  ChannelNamespaceHandlerConfigsOnPublishIntegrationLambdaConfig({
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

  factory ChannelNamespaceHandlerConfigsOnPublishIntegrationLambdaConfig.fromMap(
      Map<String, dynamic> map) {
    return ChannelNamespaceHandlerConfigsOnPublishIntegrationLambdaConfig(
      invokeType:
          map['invokeType'] == null ? null : map['invokeType'] as String,
    );
  }
}
