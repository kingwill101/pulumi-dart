// ignore_for_file: unused_element, unnecessary_cast

class GetDbServerDbServerPatchingDetail {
  final int estimatedPatchDuration;
  final String patchingStatus;
  final String timePatchingEnded;
  final String timePatchingStarted;

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
      estimatedPatchDuration: map['estimatedPatchDuration'] as int,
      patchingStatus: map['patchingStatus'] as String,
      timePatchingEnded: map['timePatchingEnded'] as String,
      timePatchingStarted: map['timePatchingStarted'] as String,
    );
  }
}
