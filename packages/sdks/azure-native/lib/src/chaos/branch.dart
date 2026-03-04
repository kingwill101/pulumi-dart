// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'continuous_action.dart';

/// Model that represents a branch in the step. 9 total per experiment.
class Branch {
  /// List of actions.
  final pulumi.Input<List<ContinuousAction>> actions;

  /// String of the branch name.
  final pulumi.Input<String> name;

  /// Creates a new [Branch].
  /// [actions] List of actions.
  /// [name] String of the branch name.
  Branch({required this.actions, required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions':
          pulumi.Input.mapInputValue<
            List<ContinuousAction>,
            List<Map<String, dynamic>>
          >(
            actions,
            (value) =>
                pulumi.Input.encodeList<ContinuousAction, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'name': name,
    };
  }

  factory Branch.fromMap(Map<String, dynamic> map) {
    return Branch(
      actions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ContinuousAction>(
          map['actions']!,
          (value) =>
              ContinuousAction.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
