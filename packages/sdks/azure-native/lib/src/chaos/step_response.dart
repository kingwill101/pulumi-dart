// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'branch_response.dart';

/// Model that represents a step in the Experiment resource.
class StepResponse {
  /// List of branches.
  final List<BranchResponse> branches;
  /// String of the step name.
  final String name;

  /// Creates a new [StepResponse].
  /// [branches] List of branches.
  /// [name] String of the step name.
  StepResponse({
    required this.branches,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branches': pulumi.Input.encodeList<BranchResponse, Map<String, dynamic>>(branches, (value) => value.toMap()),
      'name': name,
    };
  }

  factory StepResponse.fromMap(Map<String, dynamic> map) {
    return StepResponse(
      branches: pulumi.Input.decodeList<BranchResponse>(map['branches'], (value) => BranchResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}

