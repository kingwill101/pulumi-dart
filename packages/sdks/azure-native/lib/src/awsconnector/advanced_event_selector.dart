// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_field_selector.dart';

/// Definition of AdvancedEventSelector
class AdvancedEventSelector {
  /// Contains all selector statements in an advanced event selector.
  final pulumi.Input<List<AdvancedFieldSelector>>? fieldSelectors;

  /// An optional, descriptive name for an advanced event selector, such as 'Log data events for only two S3 buckets'.
  final pulumi.Input<String>? name;

  /// Creates a new [AdvancedEventSelector].
  /// [fieldSelectors] Contains all selector statements in an advanced event selector.
  /// [name] An optional, descriptive name for an advanced event selector, such as 'Log data events for only two S3 buckets'.
  AdvancedEventSelector({this.fieldSelectors, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldSelectors':
          ?pulumi.Input.mapOptionalInputValue<
            List<AdvancedFieldSelector>,
            List<Map<String, dynamic>>
          >(
            fieldSelectors,
            (value) =>
                pulumi.Input.encodeList<
                  AdvancedFieldSelector,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': ?name,
    };
  }

  factory AdvancedEventSelector.fromMap(Map<String, dynamic> map) {
    return AdvancedEventSelector(
      fieldSelectors: (() {
        final guardedValue = map['fieldSelectors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AdvancedFieldSelector>(
            guardedValue,
            (value) => AdvancedFieldSelector.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
