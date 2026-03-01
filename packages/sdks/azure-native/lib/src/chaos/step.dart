// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'branch.dart';

/// Model that represents a step in the Experiment resource.
class Step {
  /// List of branches.
  final List<Branch> branches;
  /// String of the step name.
  final String name;

  /// Creates a new [Step].
  /// [branches] List of branches.
  /// [name] String of the step name.
  Step({
    required this.branches,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branches': pulumi.Input.encodeList<Branch, Map<String, dynamic>>(branches, (value) => value.toMap()),
      'name': name,
    };
  }

  factory Step.fromMap(Map<String, dynamic> map) {
    return Step(
      branches: pulumi.Input.decodeList<Branch>(map['branches'], (value) => Branch.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}

