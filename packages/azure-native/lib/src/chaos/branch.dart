// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'continuous_action.dart';

/// Model that represents a branch in the step. 9 total per experiment.
class Branch {
  /// List of actions.
  final List<ContinuousAction> actions;
  /// String of the branch name.
  final String name;

  /// Creates a new [Branch].
  /// [actions] List of actions.
  /// [name] String of the branch name.
  Branch({
    required this.actions,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.encodeList<ContinuousAction, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'name': name,
    };
  }

  factory Branch.fromMap(Map<String, dynamic> map) {
    return Branch(
      actions: pulumi.Input.decodeList<ContinuousAction>(map['actions'], (value) => ContinuousAction.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}

