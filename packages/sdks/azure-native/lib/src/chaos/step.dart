// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'branch.dart';

/// Model that represents a step in the Experiment resource.
class Step {
  /// List of branches.
  final pulumi.Input<List<Branch>> branches;

  /// String of the step name.
  final pulumi.Input<String> name;

  /// Creates a new [Step].
  /// [branches] List of branches.
  /// [name] String of the step name.
  Step({required this.branches, required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branches':
          pulumi.Input.mapInputValue<List<Branch>, List<Map<String, dynamic>>>(
            branches,
            (value) => pulumi.Input.encodeList<Branch, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'name': name,
    };
  }

  factory Step.fromMap(Map<String, dynamic> map) {
    return Step(
      branches: pulumi.Input.fromValue(
        pulumi.Input.decodeList<Branch>(
          map['branches']!,
          (value) => Branch.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
