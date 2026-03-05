// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_field_selector_response.dart';

/// Definition of AdvancedEventSelector
class AdvancedEventSelectorResponse {
  /// Contains all selector statements in an advanced event selector.
  final pulumi.Input<List<AdvancedFieldSelectorResponse>>? fieldSelectors;
  /// An optional, descriptive name for an advanced event selector, such as 'Log data events for only two S3 buckets'.
  final pulumi.Input<String>? name;

  /// Creates a new [AdvancedEventSelectorResponse].
  /// [fieldSelectors] Contains all selector statements in an advanced event selector.
  /// [name] An optional, descriptive name for an advanced event selector, such as 'Log data events for only two S3 buckets'.
  AdvancedEventSelectorResponse({
    this.fieldSelectors,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldSelectors': ?pulumi.Input.mapOptionalInputValue<List<AdvancedFieldSelectorResponse>, List<Map<String, dynamic>>>(fieldSelectors, (value) => pulumi.Input.encodeList<AdvancedFieldSelectorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory AdvancedEventSelectorResponse.fromMap(Map<String, dynamic> map) {
    return AdvancedEventSelectorResponse(
      fieldSelectors: (() { final guardedValue = map['fieldSelectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AdvancedFieldSelectorResponse>(guardedValue, (value) => AdvancedFieldSelectorResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

