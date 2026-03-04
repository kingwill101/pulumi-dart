// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_variable_column.dart';

/// {@template pulumi_authorization_variable_at_management_group_args_doc}
/// The set of arguments for VariableAtManagementGroup.
/// {@endtemplate}
/// {@macro pulumi_authorization_variable_at_management_group_args_doc}
class VariableAtManagementGroupArgs {
  /// Variable column definitions.
  final pulumi.Input<List<PolicyVariableColumn>> columns;

  /// The ID of the management group.
  final pulumi.Input<String> managementGroupId;

  /// The name of the variable to operate on.
  final pulumi.Input<String>? variableName;

  /// Creates a new [VariableAtManagementGroupArgs].
  /// [columns] Variable column definitions.
  /// [managementGroupId] The ID of the management group.
  /// [variableName] The name of the variable to operate on.
  VariableAtManagementGroupArgs({
    required this.columns,
    required this.managementGroupId,
    this.variableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns':
          pulumi.Input.mapInputValue<
            List<PolicyVariableColumn>,
            List<Map<String, dynamic>>
          >(
            columns,
            (value) =>
                pulumi.Input.encodeList<
                  PolicyVariableColumn,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'managementGroupId': managementGroupId,
      'variableName': ?variableName,
    };
  }

  factory VariableAtManagementGroupArgs.fromMap(Map<String, dynamic> map) {
    return VariableAtManagementGroupArgs(
      columns: pulumi.Input.fromValue(
        pulumi.Input.decodeList<PolicyVariableColumn>(
          map['columns']!,
          (value) => PolicyVariableColumn.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      managementGroupId: pulumi.Input.fromValue(
        map['managementGroupId'] as String,
      ),
      variableName: (() {
        final guardedValue = map['variableName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
