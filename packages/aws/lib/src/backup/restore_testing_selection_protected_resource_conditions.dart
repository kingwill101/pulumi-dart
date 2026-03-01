// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_testing_selection_protected_resource_conditions_string_equal.dart';
import 'restore_testing_selection_protected_resource_conditions_string_not_equal.dart';

class RestoreTestingSelectionProtectedResourceConditions {
  /// The list of string equals conditions for resource tags. Filters the values of your tagged resources for only those resources that you tagged with the same value. Also called "exact matching.". See the structure for details
  final List<RestoreTestingSelectionProtectedResourceConditionsStringEqual>?
  stringEquals;

  /// The list of string not equals conditions for resource tags. Filters the values of your tagged resources for only those resources that you tagged that do not have the same value. Also called "negated matching.". See the structure for details
  final List<RestoreTestingSelectionProtectedResourceConditionsStringNotEqual>?
  stringNotEquals;

  /// Creates a new [RestoreTestingSelectionProtectedResourceConditions].
  /// [stringEquals] The list of string equals conditions for resource tags. Filters the values of your tagged resources for only those resources that you tagged with the same value. Also called "exact matching.". See the structure for details
  /// [stringNotEquals] The list of string not equals conditions for resource tags. Filters the values of your tagged resources for only those resources that you tagged that do not have the same value. Also called "negated matching.". See the structure for details
  RestoreTestingSelectionProtectedResourceConditions({
    this.stringEquals,
    this.stringNotEquals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stringEquals': ?stringEquals == null
          ? null
          : pulumi.Input.encodeList<
              RestoreTestingSelectionProtectedResourceConditionsStringEqual,
              Map<String, dynamic>
            >(stringEquals!, (value) => value.toMap()),
      'stringNotEquals': ?stringNotEquals == null
          ? null
          : pulumi.Input.encodeList<
              RestoreTestingSelectionProtectedResourceConditionsStringNotEqual,
              Map<String, dynamic>
            >(stringNotEquals!, (value) => value.toMap()),
    };
  }

  factory RestoreTestingSelectionProtectedResourceConditions.fromMap(
    Map<String, dynamic> map,
  ) {
    return RestoreTestingSelectionProtectedResourceConditions(
      stringEquals: map['stringEquals'] == null
          ? null
          : pulumi.Input.decodeList<
              RestoreTestingSelectionProtectedResourceConditionsStringEqual
            >(
              map['stringEquals'],
              (value) =>
                  RestoreTestingSelectionProtectedResourceConditionsStringEqual.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      stringNotEquals: map['stringNotEquals'] == null
          ? null
          : pulumi.Input.decodeList<
              RestoreTestingSelectionProtectedResourceConditionsStringNotEqual
            >(
              map['stringNotEquals'],
              (value) =>
                  RestoreTestingSelectionProtectedResourceConditionsStringNotEqual.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
