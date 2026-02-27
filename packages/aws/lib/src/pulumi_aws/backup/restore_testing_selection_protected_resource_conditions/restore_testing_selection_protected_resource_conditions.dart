// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../restore_testing_selection_protected_resource_conditions_string_equal/restore_testing_selection_protected_resource_conditions_string_equal.dart';
import '../restore_testing_selection_protected_resource_conditions_string_not_equal/restore_testing_selection_protected_resource_conditions_string_not_equal.dart';

class RestoreTestingSelectionProtectedResourceConditions {
  /// The list of string equals conditions for resource tags. Filters the values of your tagged resources for only those resources that you tagged with the same value. Also called "exact matching.". See the structure for details
  final List<RestoreTestingSelectionProtectedResourceConditionsStringEqual>?
      stringEquals;

  /// The list of string not equals conditions for resource tags. Filters the values of your tagged resources for only those resources that you tagged that do not have the same value. Also called "negated matching.". See the structure for details
  final List<RestoreTestingSelectionProtectedResourceConditionsStringNotEqual>?
      stringNotEquals;

  RestoreTestingSelectionProtectedResourceConditions({
    this.stringEquals,
    this.stringNotEquals,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final stringEqualsValue = stringEquals;
    if (stringEqualsValue != null) {
      map['stringEquals'] = pulumi.Input.encodeList<
          RestoreTestingSelectionProtectedResourceConditionsStringEqual,
          Map<String, dynamic>>(stringEqualsValue, (value) => value.toMap());
    }
    final stringNotEqualsValue = stringNotEquals;
    if (stringNotEqualsValue != null) {
      map['stringNotEquals'] = pulumi.Input.encodeList<
          RestoreTestingSelectionProtectedResourceConditionsStringNotEqual,
          Map<String, dynamic>>(stringNotEqualsValue, (value) => value.toMap());
    }
    return map;
  }

  factory RestoreTestingSelectionProtectedResourceConditions.fromMap(
      Map<String, dynamic> map) {
    return RestoreTestingSelectionProtectedResourceConditions(
      stringEquals: map['stringEquals'] == null
          ? null
          : pulumi.Input.decodeList<
                  RestoreTestingSelectionProtectedResourceConditionsStringEqual>(
              map['stringEquals'],
              (value) =>
                  RestoreTestingSelectionProtectedResourceConditionsStringEqual
                      .fromMap((value as Map).cast<String, dynamic>())),
      stringNotEquals: map['stringNotEquals'] == null
          ? null
          : pulumi.Input.decodeList<
                  RestoreTestingSelectionProtectedResourceConditionsStringNotEqual>(
              map['stringNotEquals'],
              (value) =>
                  RestoreTestingSelectionProtectedResourceConditionsStringNotEqual
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
