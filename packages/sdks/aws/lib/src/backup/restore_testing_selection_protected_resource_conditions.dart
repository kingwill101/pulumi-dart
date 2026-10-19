// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_testing_selection_protected_resource_conditions_string_equal.dart';
import 'restore_testing_selection_protected_resource_conditions_string_not_equal.dart';

class RestoreTestingSelectionProtectedResourceConditions {
  /// List of string equals conditions for resource tags. Filters the values of your tagged resources for only those resources that you tagged with the same value. Also called "exact matching.". See `stringEquals` below.
  final pulumi.Input<List<RestoreTestingSelectionProtectedResourceConditionsStringEqual>?>? stringEquals;
  /// List of string not equals conditions for resource tags. Filters the values of your tagged resources for only those resources that you tagged that do not have the same value. Also called "negated matching.". See `stringNotEquals` below.
  final pulumi.Input<List<RestoreTestingSelectionProtectedResourceConditionsStringNotEqual>?>? stringNotEquals;

  /// Creates a new [RestoreTestingSelectionProtectedResourceConditions].
  /// [stringEquals] List of string equals conditions for resource tags. Filters the values of your tagged resources for only those resources that you tagged with the same value. Also called "exact matching.". See `stringEquals` below.
  /// [stringNotEquals] List of string not equals conditions for resource tags. Filters the values of your tagged resources for only those resources that you tagged that do not have the same value. Also called "negated matching.". See `stringNotEquals` below.
  const RestoreTestingSelectionProtectedResourceConditions({
    this.stringEquals,
    this.stringNotEquals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stringEquals': ?pulumi.Input.mapOptionalInputValue<List<RestoreTestingSelectionProtectedResourceConditionsStringEqual>, List<Map<String, dynamic>>>(stringEquals, (value) => pulumi.Input.encodeList<RestoreTestingSelectionProtectedResourceConditionsStringEqual, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stringNotEquals': ?pulumi.Input.mapOptionalInputValue<List<RestoreTestingSelectionProtectedResourceConditionsStringNotEqual>, List<Map<String, dynamic>>>(stringNotEquals, (value) => pulumi.Input.encodeList<RestoreTestingSelectionProtectedResourceConditionsStringNotEqual, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RestoreTestingSelectionProtectedResourceConditions.fromMap(Map<String, dynamic> map) {
    return RestoreTestingSelectionProtectedResourceConditions(
      stringEquals: (() { final guardedValue = map['stringEquals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RestoreTestingSelectionProtectedResourceConditionsStringEqual>(guardedValue, (value) => RestoreTestingSelectionProtectedResourceConditionsStringEqual.fromMap((value as Map).cast<String, dynamic>()))); })(),
      stringNotEquals: (() { final guardedValue = map['stringNotEquals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RestoreTestingSelectionProtectedResourceConditionsStringNotEqual>(guardedValue, (value) => RestoreTestingSelectionProtectedResourceConditionsStringNotEqual.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
