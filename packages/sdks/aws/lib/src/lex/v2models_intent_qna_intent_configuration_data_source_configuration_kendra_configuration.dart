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

  factory V2modelsIntentQnaIntentConfigurationDataSourceConfigurationKendraConfiguration.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentQnaIntentConfigurationDataSourceConfigurationKendraConfiguration(
      exactResponse: map['exactResponse'] == null ? null : (map['exactResponse'] as bool).input(),
      kendraIndex: (map['kendraIndex'] as String).input(),
      queryFilterString: map['queryFilterString'] == null ? null : (map['queryFilterString'] as String).input(),
      queryFilterStringEnabled: map['queryFilterStringEnabled'] == null ? null : (map['queryFilterStringEnabled'] as bool).input(),
    );
  }
}

