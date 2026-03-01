// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_field_selector_response.dart';

/// Definition of AdvancedEventSelector
class AdvancedEventSelectorResponse {
  /// Contains all selector statements in an advanced event selector.
  final List<AdvancedFieldSelectorResponse>? fieldSelectors;
  /// An optional, descriptive name for an advanced event selector, such as 'Log data events for only two S3 buckets'.
  final String? name;

  /// Creates a new [AdvancedEventSelectorResponse].
  /// [fieldSelectors] Contains all selector statements in an advanced event selector.
  /// [name] An optional, descriptive name for an advanced event selector, such as 'Log data events for only two S3 buckets'.
  AdvancedEventSelectorResponse({
    this.fieldSelectors,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldSelectors': ?fieldSelectors == null ? null : pulumi.Input.encodeList<AdvancedFieldSelectorResponse, Map<String, dynamic>>(fieldSelectors!, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory AdvancedEventSelectorResponse.fromMap(Map<String, dynamic> map) {
    return AdvancedEventSelectorResponse(
      fieldSelectors: map['fieldSelectors'] == null ? null : pulumi.Input.decodeList<AdvancedFieldSelectorResponse>(map['fieldSelectors'], (value) => AdvancedFieldSelectorResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

