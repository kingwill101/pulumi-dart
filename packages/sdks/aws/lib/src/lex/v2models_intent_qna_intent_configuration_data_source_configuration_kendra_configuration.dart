// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsIntentQnaIntentConfigurationDataSourceConfigurationKendraConfiguration {
  /// Whether to return exact responses from Kendra. Defaults to `false`.
  final pulumi.Input<bool>? exactResponse;

  /// ARN of the Kendra index.
  final pulumi.Input<String> kendraIndex;

  /// Query filter string for Kendra.
  final pulumi.Input<String>? queryFilterString;

  /// Whether the query filter string is enabled.
  final pulumi.Input<bool>? queryFilterStringEnabled;

  /// Creates a new [V2modelsIntentQnaIntentConfigurationDataSourceConfigurationKendraConfiguration].
  /// [exactResponse] Whether to return exact responses from Kendra. Defaults to `false`.
  /// [kendraIndex] ARN of the Kendra index.
  /// [queryFilterString] Query filter string for Kendra.
  /// [queryFilterStringEnabled] Whether the query filter string is enabled.
  V2modelsIntentQnaIntentConfigurationDataSourceConfigurationKendraConfiguration({
    this.exactResponse,
    required this.kendraIndex,
    this.queryFilterString,
    this.queryFilterStringEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exactResponse': ?exactResponse,
      'kendraIndex': kendraIndex,
      'queryFilterString': ?queryFilterString,
      'queryFilterStringEnabled': ?queryFilterStringEnabled,
    };
  }

  factory V2modelsIntentQnaIntentConfigurationDataSourceConfigurationKendraConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentQnaIntentConfigurationDataSourceConfigurationKendraConfiguration(
      exactResponse: (() {
        final guardedValue = map['exactResponse'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      kendraIndex: pulumi.Input.fromValue(map['kendraIndex'] as String),
      queryFilterString: (() {
        final guardedValue = map['queryFilterString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      queryFilterStringEnabled: (() {
        final guardedValue = map['queryFilterStringEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
