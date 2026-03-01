// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AiTrafficAnalysisStatus resources.
class AiTrafficAnalysisStatusState {
  /// Status
  final pulumi.Input<String>? status;

  /// Creates a new [AiTrafficAnalysisStatusState].
  /// [status] Status
  AiTrafficAnalysisStatusState({
    pulumi.Output<String>? status,
  }) :
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory AiTrafficAnalysisStatusState.fromMap(Map<String, dynamic> map) {
    return AiTrafficAnalysisStatusState(
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

