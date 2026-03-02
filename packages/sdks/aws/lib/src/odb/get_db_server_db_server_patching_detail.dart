// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDbServerDbServerPatchingDetail {
  final pulumi.Input<int> estimatedPatchDuration;
  final pulumi.Input<String> patchingStatus;
  final pulumi.Input<String> timePatchingEnded;
  final pulumi.Input<String> timePatchingStarted;

  /// Creates a new [GetDbServerDbServerPatchingDetail].
  /// [estimatedPatchDuration] Required.
  /// [patchingStatus] Required.
  /// [timePatchingEnded] Required.
  /// [timePatchingStarted] Required.
  GetDbServerDbServerPatchingDetail({
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

  factory GetDbServerDbServerPatchingDetail.fromMap(Map<String, dynamic> map) {
    return GetDbServerDbServerPatchingDetail(
      estimatedPatchDuration: (map['estimatedPatchDuration'] as int).input(),
      patchingStatus: (map['patchingStatus'] as String).input(),
      timePatchingEnded: (map['timePatchingEnded'] as String).input(),
      timePatchingStarted: (map['timePatchingStarted'] as String).input(),
    );
  }
}

