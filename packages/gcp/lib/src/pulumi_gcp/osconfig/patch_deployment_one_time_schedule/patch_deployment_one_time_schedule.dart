// ignore_for_file: unused_element, unnecessary_cast

class PatchDeploymentOneTimeSchedule {
  /// The desired patch job execution time. A timestamp in RFC3339 UTC "Zulu" format,
  /// accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final String executeTime;

  PatchDeploymentOneTimeSchedule({
    required this.executeTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['executeTime'] = executeTime;
    return map;
  }

  factory PatchDeploymentOneTimeSchedule.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentOneTimeSchedule(
      executeTime: map['executeTime'] as String,
    );
  }
}
