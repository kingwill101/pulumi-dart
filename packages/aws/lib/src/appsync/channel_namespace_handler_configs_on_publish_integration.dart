// ignore_for_file: unused_element, unnecessary_cast

import 'channel_namespace_handler_configs_on_publish_integration_lambda_config.dart';

class ChannelNamespaceHandlerConfigsOnPublishIntegration {
  /// Unique name of the data source that has been configured on the API.
  final String dataSourceName;

  /// Configuration for a Lambda data source. See Lambda Config below.
  final ChannelNamespaceHandlerConfigsOnPublishIntegrationLambdaConfig?
  lambdaConfig;

  /// Creates a new [ChannelNamespaceHandlerConfigsOnPublishIntegration].
  /// [dataSourceName] Unique name of the data source that has been configured on the API.
  /// [lambdaConfig] Configuration for a Lambda data source. See Lambda Config below.
  ChannelNamespaceHandlerConfigsOnPublishIntegration({
    required this.dataSourceName,
    this.lambdaConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceName': dataSourceName,
      'lambdaConfig': ?lambdaConfig == null ? null : lambdaConfig!.toMap(),
    };
  }

  factory ChannelNamespaceHandlerConfigsOnPublishIntegration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelNamespaceHandlerConfigsOnPublishIntegration(
      dataSourceName: map['dataSourceName'] as String,
      lambdaConfig: map['lambdaConfig'] == null
          ? null
          : ChannelNamespaceHandlerConfigsOnPublishIntegrationLambdaConfig.fromMap(
              (map['lambdaConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
