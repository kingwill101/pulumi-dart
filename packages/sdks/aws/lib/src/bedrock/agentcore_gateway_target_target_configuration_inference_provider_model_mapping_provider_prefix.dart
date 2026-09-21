// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayTargetTargetConfigurationInferenceProviderModelMappingProviderPrefix {
  /// Single character that separates the provider prefix from the model name (for example, `.`). Defaults to `.`.
  final pulumi.Input<String?>? separator;
  /// Whether clients can omit the provider prefix from model IDs. If `true`, the gateway accepts model IDs without the prefix and restores the full prefixed form before forwarding to the provider. Defaults to `false`.
  final pulumi.Input<bool?>? strip;

  /// Creates a new [AgentcoreGatewayTargetTargetConfigurationInferenceProviderModelMappingProviderPrefix].
  /// [separator] Single character that separates the provider prefix from the model name (for example, `.`). Defaults to `.`.
  /// [strip] Whether clients can omit the provider prefix from model IDs. If `true`, the gateway accepts model IDs without the prefix and restores the full prefixed form before forwarding to the provider. Defaults to `false`.
  const AgentcoreGatewayTargetTargetConfigurationInferenceProviderModelMappingProviderPrefix({
    this.separator,
    this.strip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'separator': ?separator,
      'strip': ?strip,
    };
  }

  factory AgentcoreGatewayTargetTargetConfigurationInferenceProviderModelMappingProviderPrefix.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetTargetConfigurationInferenceProviderModelMappingProviderPrefix(
      separator: (() { final guardedValue = map['separator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      strip: (() { final guardedValue = map['strip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
