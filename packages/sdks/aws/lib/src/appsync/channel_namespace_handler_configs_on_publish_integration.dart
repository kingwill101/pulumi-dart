// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_namespace_handler_configs_on_publish_integration_lambda_config.dart';

class ChannelNamespaceHandlerConfigsOnPublishIntegration {
  /// Unique name of the data source that has been configured on the API.
  final pulumi.Input<String> dataSourceName;
  /// Configuration for a Lambda data source. See `lambdaConfig` below.
  final pulumi.Input<ChannelNamespaceHandlerConfigsOnPublishIntegrationLambdaConfig>? lambdaConfig;

  /// Creates a new [ChannelNamespaceHandlerConfigsOnPublishIntegration].
  /// [dataSourceName] Unique name of the data source that has been configured on the API.
  /// [lambdaConfig] Configuration for a Lambda data source. See `lambdaConfig` below.
  const ChannelNamespaceHandlerConfigsOnPublishIntegration({
    required this.dataSourceName,
    this.lambdaConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceName': dataSourceName,
      'lambdaConfig': ?pulumi.Input.mapOptionalInputValue<ChannelNamespaceHandlerConfigsOnPublishIntegrationLambdaConfig, Map<String, dynamic>>(lambdaConfig, (value) => value.toMap()),
    };
  }

  factory ChannelNamespaceHandlerConfigsOnPublishIntegration.fromMap(Map<String, dynamic> map) {
    return ChannelNamespaceHandlerConfigsOnPublishIntegration(
      dataSourceName: pulumi.Input.fromValue(map['dataSourceName'] as String),
      lambdaConfig: (() { final guardedValue = map['lambdaConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelNamespaceHandlerConfigsOnPublishIntegrationLambdaConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
