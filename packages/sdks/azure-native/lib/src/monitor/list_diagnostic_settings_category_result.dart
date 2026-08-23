// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_settings_category_resource_response.dart';

/// Result data returned by listDiagnosticSettingsCategory.
class ListDiagnosticSettingsCategoryResult {
  /// The URL to get the next set of results.
  final String? nextLink;
  /// The collection of diagnostic settings category resources.
  final List<DiagnosticSettingsCategoryResourceResponse>? value;

  /// Creates a new [ListDiagnosticSettingsCategoryResult].
  /// [nextLink] The URL to get the next set of results.
  /// [value] The collection of diagnostic settings category resources.
  const ListDiagnosticSettingsCategoryResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<DiagnosticSettingsCategoryResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListDiagnosticSettingsCategoryResult.fromMap(Map<String, dynamic> map) {
    return ListDiagnosticSettingsCategoryResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DiagnosticSettingsCategoryResourceResponse>(guardedValue, (value) => DiagnosticSettingsCategoryResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
