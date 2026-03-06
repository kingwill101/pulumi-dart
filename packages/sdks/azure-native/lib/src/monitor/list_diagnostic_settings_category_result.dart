// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_settings_category_resource_response.dart';

/// Result data returned by listDiagnosticSettingsCategory.
class ListDiagnosticSettingsCategoryResult {
  /// The collection of diagnostic settings category resources.
  final List<DiagnosticSettingsCategoryResourceResponse>? value;

  /// Creates a new [ListDiagnosticSettingsCategoryResult].
  /// [value] The collection of diagnostic settings category resources.
  const ListDiagnosticSettingsCategoryResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<DiagnosticSettingsCategoryResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListDiagnosticSettingsCategoryResult.fromMap(Map<String, dynamic> map) {
    return ListDiagnosticSettingsCategoryResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DiagnosticSettingsCategoryResourceResponse>(guardedValue, (value) => DiagnosticSettingsCategoryResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

