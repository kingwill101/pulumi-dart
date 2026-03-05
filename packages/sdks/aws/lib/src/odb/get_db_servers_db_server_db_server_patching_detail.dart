// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDbServersDbServerDbServerPatchingDetail {
  final pulumi.Input<int> estimatedPatchDuration;
  final pulumi.Input<String> patchingStatus;
  final pulumi.Input<String> timePatchingEnded;
  final pulumi.Input<String> timePatchingStarted;

  /// Creates a new [GetDbServersDbServerDbServerPatchingDetail].
  /// [estimatedPatchDuration] Required.
  /// [patchingStatus] Required.
  /// [timePatchingEnded] Required.
  /// [timePatchingStarted] Required.
  GetDbServersDbServerDbServerPatchingDetail({
    required this.estimatedPatchDuration,
    required this.patchingStatus,
    required this.timePatchingEnded,
    required this.timePatchingStarted,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'estimatedPatchDuration': estimatedPatchDuration,
      'patchingStatus': patchingStatus,
      'timePatchingEnded': timePatchingEnded,
      'timePatchingStarted': timePatchingStarted,
    };
  }

  factory GetDbServersDbServerDbServerPatchingDetail.fromMap(Map<String, dynamic> map) {
    return GetDbServersDbServerDbServerPatchingDetail(
      estimatedPatchDuration: pulumi.Input.fromValue(map['estimatedPatchDuration'] as int),
      patchingStatus: pulumi.Input.fromValue(map['patchingStatus'] as String),
      timePatchingEnded: pulumi.Input.fromValue(map['timePatchingEnded'] as String),
      timePatchingStarted: pulumi.Input.fromValue(map['timePatchingStarted'] as String),
    );
  }
}

