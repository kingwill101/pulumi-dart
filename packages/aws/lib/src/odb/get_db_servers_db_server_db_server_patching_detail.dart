// ignore_for_file: unused_element, unnecessary_cast


class GetDbServersDbServerDbServerPatchingDetail {
  final int estimatedPatchDuration;
  final String patchingStatus;
  final String timePatchingEnded;
  final String timePatchingStarted;

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
      estimatedPatchDuration: map['estimatedPatchDuration'] as int,
      patchingStatus: map['patchingStatus'] as String,
      timePatchingEnded: map['timePatchingEnded'] as String,
      timePatchingStarted: map['timePatchingStarted'] as String,
    );
  }
}

