// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelNamespaceHandlerConfigsOnPublishIntegrationLambdaConfig {
  /// Invocation type for a Lambda data source. Valid values: `REQUEST_RESPONSE`, `EVENT`.
  final pulumi.Input<String>? invokeType;

  /// Creates a new [ChannelNamespaceHandlerConfigsOnPublishIntegrationLambdaConfig].
  /// [invokeType] Invocation type for a Lambda data source. Valid values: `REQUEST_RESPONSE`, `EVENT`.
  ChannelNamespaceHandlerConfigsOnPublishIntegrationLambdaConfig({
    this.invokeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'invokeType': ?invokeType};
  }

  factory ChannelNamespaceHandlerConfigsOnPublishIntegrationLambdaConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelNamespaceHandlerConfigsOnPublishIntegrationLambdaConfig(
      invokeType: (() {
        final guardedValue = map['invokeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
