// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'branch_response.dart';

/// Model that represents a step in the Experiment resource.
class StepResponse {
  /// List of branches.
  final pulumi.Input<List<BranchResponse>> branches;
  /// String of the step name.
  final pulumi.Input<String> name;

  /// Creates a new [StepResponse].
  /// [branches] List of branches.
  /// [name] String of the step name.
  StepResponse({
    required this.branches,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branches': pulumi.Input.mapInputValue<List<BranchResponse>, List<Map<String, dynamic>>>(branches, (value) => pulumi.Input.encodeList<BranchResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory StepResponse.fromMap(Map<String, dynamic> map) {
    return StepResponse(
      branches: pulumi.Input.fromValue(pulumi.Input.decodeList<BranchResponse>(map['branches']!, (value) => BranchResponse.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

