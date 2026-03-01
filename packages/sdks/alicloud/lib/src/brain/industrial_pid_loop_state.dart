// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IndustrialPidLoop resources.
class IndustrialPidLoopState {
  /// The Pid Loop Configuration.
  final pulumi.Input<String>? pidLoopConfiguration;
  /// The dcs type of Pid Loop. Valid values: `standard`.
  final pulumi.Input<String>? pidLoopDcsType;
  /// The desc of Pid Loop.
  final pulumi.Input<String>? pidLoopDesc;
  /// Whether is crucial Pid Loop.
  final pulumi.Input<bool>? pidLoopIsCrucial;
  /// The name of Pid Loop.
  final pulumi.Input<String>? pidLoopName;
  /// The type of Pid Loop. Valid values: `0`, `1`, `2`, `3`, `4`, `5`.
  final pulumi.Input<String>? pidLoopType;
  /// The pid project id.
  final pulumi.Input<String>? pidProjectId;
  /// The status of Pid Loop.
  final pulumi.Input<String>? status;

  /// Creates a new [IndustrialPidLoopState].
  /// [pidLoopConfiguration] The Pid Loop Configuration.
  /// [pidLoopDcsType] The dcs type of Pid Loop. Valid values: `standard`.
  /// [pidLoopDesc] The desc of Pid Loop.
  /// [pidLoopIsCrucial] Whether is crucial Pid Loop.
  /// [pidLoopName] The name of Pid Loop.
  /// [pidLoopType] The type of Pid Loop. Valid values: `0`, `1`, `2`, `3`, `4`, `5`.
  /// [pidProjectId] The pid project id.
  /// [status] The status of Pid Loop.
  IndustrialPidLoopState({
    pulumi.Output<String>? pidLoopConfiguration,
    pulumi.Output<String>? pidLoopDcsType,
    pulumi.Output<String>? pidLoopDesc,
    pulumi.Output<bool>? pidLoopIsCrucial,
    pulumi.Output<String>? pidLoopName,
    pulumi.Output<String>? pidLoopType,
    pulumi.Output<String>? pidProjectId,
    pulumi.Output<String>? status,
  }) :
      pidLoopConfiguration = pulumi.Input.asOptionalInput<String>(pidLoopConfiguration),
      pidLoopDcsType = pulumi.Input.asOptionalInput<String>(pidLoopDcsType),
      pidLoopDesc = pulumi.Input.asOptionalInput<String>(pidLoopDesc),
      pidLoopIsCrucial = pulumi.Input.asOptionalInput<bool>(pidLoopIsCrucial),
      pidLoopName = pulumi.Input.asOptionalInput<String>(pidLoopName),
      pidLoopType = pulumi.Input.asOptionalInput<String>(pidLoopType),
      pidProjectId = pulumi.Input.asOptionalInput<String>(pidProjectId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pidLoopConfiguration': ?pidLoopConfiguration,
      'pidLoopDcsType': ?pidLoopDcsType,
      'pidLoopDesc': ?pidLoopDesc,
      'pidLoopIsCrucial': ?pidLoopIsCrucial,
      'pidLoopName': ?pidLoopName,
      'pidLoopType': ?pidLoopType,
      'pidProjectId': ?pidProjectId,
      'status': ?status,
    };
  }

  factory IndustrialPidLoopState.fromMap(Map<String, dynamic> map) {
    return IndustrialPidLoopState(
      pidLoopConfiguration: map['pidLoopConfiguration'] == null ? null : pulumi.Output.create<String>(map['pidLoopConfiguration'] as String),
      pidLoopDcsType: map['pidLoopDcsType'] == null ? null : pulumi.Output.create<String>(map['pidLoopDcsType'] as String),
      pidLoopDesc: map['pidLoopDesc'] == null ? null : pulumi.Output.create<String>(map['pidLoopDesc'] as String),
      pidLoopIsCrucial: map['pidLoopIsCrucial'] == null ? null : pulumi.Output.create<bool>(map['pidLoopIsCrucial'] as bool),
      pidLoopName: map['pidLoopName'] == null ? null : pulumi.Output.create<String>(map['pidLoopName'] as String),
      pidLoopType: map['pidLoopType'] == null ? null : pulumi.Output.create<String>(map['pidLoopType'] as String),
      pidProjectId: map['pidProjectId'] == null ? null : pulumi.Output.create<String>(map['pidProjectId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

