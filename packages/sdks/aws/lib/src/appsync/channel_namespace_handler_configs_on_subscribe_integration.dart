// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_namespace_handler_configs_on_subscribe_integration_lambda_config.dart';

class ChannelNamespaceHandlerConfigsOnSubscribeIntegration {
  /// Unique name of the data source that has been configured on the API.
  final pulumi.Input<String> dataSourceName;
  /// Configuration for a Lambda data source. See Lambda Config below.
  final pulumi.Input<ChannelNamespaceHandlerConfigsOnSubscribeIntegrationLambdaConfig>? lambdaConfig;

  /// Creates a new [ChannelNamespaceHandlerConfigsOnSubscribeIntegration].
  /// [dataSourceName] Unique name of the data source that has been configured on the API.
  /// [lambdaConfig] Configuration for a Lambda data source. See Lambda Config below.
  ChannelNamespaceHandlerConfigsOnSubscribeIntegration({
    required this.dataSourceName,
    this.lambdaConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceName': dataSourceName,
      'lambdaConfig': ?pulumi.Input.mapOptionalInputValue<ChannelNamespaceHandlerConfigsOnSubscribeIntegrationLambdaConfig, Map<String, dynamic>>(lambdaConfig, (value) => value.toMap()),
    };
  }

  factory ChannelNamespaceHandlerConfigsOnSubscribeIntegration.fromMap(Map<String, dynamic> map) {
    return ChannelNamespaceHandlerConfigsOnSubscribeIntegration(
      dataSourceName: (map['dataSourceName'] as String).input(),
      lambdaConfig: map['lambdaConfig'] == null ? null : (ChannelNamespaceHandlerConfigsOnSubscribeIntegrationLambdaConfig.fromMap((map['lambdaConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

