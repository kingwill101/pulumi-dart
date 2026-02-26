// ignore_for_file: unused_element, unnecessary_cast

import '../channel_namespace_handler_configs_on_publish_integration_lambda_config/channel_namespace_handler_configs_on_publish_integration_lambda_config.dart';

class ChannelNamespaceHandlerConfigsOnPublishIntegration {
  /// Unique name of the data source that has been configured on the API.
  final String dataSourceName;

  /// Configuration for a Lambda data source. See Lambda Config below.
  final ChannelNamespaceHandlerConfigsOnPublishIntegrationLambdaConfig?
      lambdaConfig;

  ChannelNamespaceHandlerConfigsOnPublishIntegration({
    required this.dataSourceName,
    this.lambdaConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataSourceName'] = dataSourceName;
    final lambdaConfigValue = lambdaConfig;
    if (lambdaConfigValue != null) {
      map['lambdaConfig'] = lambdaConfigValue.toMap();
    }
    return map;
  }

  factory ChannelNamespaceHandlerConfigsOnPublishIntegration.fromMap(
      Map<String, dynamic> map) {
    return ChannelNamespaceHandlerConfigsOnPublishIntegration(
      dataSourceName: map['dataSourceName'] as String,
      lambdaConfig: map['lambdaConfig'] == null
          ? null
          : ChannelNamespaceHandlerConfigsOnPublishIntegrationLambdaConfig
              .fromMap((map['lambdaConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
