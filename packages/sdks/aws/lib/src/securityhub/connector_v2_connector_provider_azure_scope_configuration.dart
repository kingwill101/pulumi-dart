// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorV2ConnectorProviderAzureScopeConfiguration {
  /// Type of scope. Valid values are `TENANT` and `SUBSCRIPTION`.
  final pulumi.Input<String> scopeType;
  /// Set of scope values, such as Azure subscription IDs, when `scopeType` is `SUBSCRIPTION`.
  final pulumi.Input<List<String>?>? scopeValues;

  /// Creates a new [ConnectorV2ConnectorProviderAzureScopeConfiguration].
  /// [scopeType] Type of scope. Valid values are `TENANT` and `SUBSCRIPTION`.
  /// [scopeValues] Set of scope values, such as Azure subscription IDs, when `scopeType` is `SUBSCRIPTION`.
  const ConnectorV2ConnectorProviderAzureScopeConfiguration({
    required this.scopeType,
    this.scopeValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scopeType': scopeType,
      'scopeValues': ?scopeValues,
    };
  }

  factory ConnectorV2ConnectorProviderAzureScopeConfiguration.fromMap(Map<String, dynamic> map) {
    return ConnectorV2ConnectorProviderAzureScopeConfiguration(
      scopeType: pulumi.Input.fromValue(map['scopeType'] as String),
      scopeValues: (() { final guardedValue = map['scopeValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
