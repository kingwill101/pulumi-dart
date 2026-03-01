// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EcsSessionManagerStatus resources.
class EcsSessionManagerStatusState {
  /// The name of the Session Manager Status. Valid values: `sessionManagerStatus`.
  final pulumi.Input<String>? sessionManagerStatusName;
  /// The status of the Session Manager Status. Valid values: `Enabled`, `Disabled`.
  final pulumi.Input<String>? status;

  /// Creates a new [EcsSessionManagerStatusState].
  /// [sessionManagerStatusName] The name of the Session Manager Status. Valid values: `sessionManagerStatus`.
  /// [status] The status of the Session Manager Status. Valid values: `Enabled`, `Disabled`.
  EcsSessionManagerStatusState({
    pulumi.Output<String>? sessionManagerStatusName,
    pulumi.Output<String>? status,
  }) :
      sessionManagerStatusName = pulumi.Input.asOptionalInput<String>(sessionManagerStatusName),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sessionManagerStatusName': ?sessionManagerStatusName,
      'status': ?status,
    };
  }

  factory EcsSessionManagerStatusState.fromMap(Map<String, dynamic> map) {
    return EcsSessionManagerStatusState(
      sessionManagerStatusName: map['sessionManagerStatusName'] == null ? null : pulumi.Output.create<String>(map['sessionManagerStatusName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

