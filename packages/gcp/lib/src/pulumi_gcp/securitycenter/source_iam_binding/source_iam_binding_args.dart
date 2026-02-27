// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../source_iam_binding_condition/source_iam_binding_condition.dart';

/// The set of arguments for SourceIamBinding.
class SourceIamBindingArgs {
  final pulumi.Input<SourceIamBindingCondition>? condition;
  final pulumi.Input<List<String>> members;

  /// The organization whose Cloud Security Command Center the Source
  /// lives in.
  final pulumi.Input<String> organization;
  final pulumi.Input<String> role;
  final pulumi.Input<String> source;

  SourceIamBindingArgs({
    this.condition,
    required this.members,
    required this.organization,
    required this.role,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          SourceIamBindingCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['members'] = members;
    map['organization'] = organization;
    map['role'] = role;
    map['source'] = source;
    return map;
  }

  factory SourceIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return SourceIamBindingArgs(
      condition: pulumi.Input.asOptionalInput<SourceIamBindingCondition>(
          map['condition']),
      members: pulumi.Input.asInput<List<String>>(map['members']),
      organization: pulumi.Input.asInput<String>(map['organization']),
      role: pulumi.Input.asInput<String>(map['role']),
      source: pulumi.Input.asInput<String>(map['source']),
    );
  }
}
