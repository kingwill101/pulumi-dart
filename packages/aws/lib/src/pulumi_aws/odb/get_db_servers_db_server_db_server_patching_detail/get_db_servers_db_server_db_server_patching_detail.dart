// ignore_for_file: unused_element, unnecessary_cast

class GetDbServersDbServerDbServerPatchingDetail {
  final int estimatedPatchDuration;
  final String patchingStatus;
  final String timePatchingEnded;
  final String timePatchingStarted;

  GetDbServersDbServerDbServerPatchingDetail({
    required this.estimatedPatchDuration,
    required this.patchingStatus,
    required this.timePatchingEnded,
    required this.timePatchingStarted,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['estimatedPatchDuration'] = estimatedPatchDuration;
    map['patchingStatus'] = patchingStatus;
    map['timePatchingEnded'] = timePatchingEnded;
    map['timePatchingStarted'] = timePatchingStarted;
    return map;
  }

  factory GetDbServersDbServerDbServerPatchingDetail.fromMap(
      Map<String, dynamic> map) {
    return GetDbServersDbServerDbServerPatchingDetail(
      estimatedPatchDuration: map['estimatedPatchDuration'] as int,
      patchingStatus: map['patchingStatus'] as String,
      timePatchingEnded: map['timePatchingEnded'] as String,
      timePatchingStarted: map['timePatchingStarted'] as String,
    );
  }
}
