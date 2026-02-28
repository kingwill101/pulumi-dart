// ignore_for_file: unused_element, unnecessary_cast

class TargetRun {
  /// Required. The location where the Cloud Run Service should be located. Format is `projects/{project}/locations/{location}`.
  final String location;

  /// Creates a new [TargetRun].
  /// [location] Required. The location where the Cloud Run Service should be located. Format is `projects/{project}/locations/{location}`.
  TargetRun({
    required this.location,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    return map;
  }

  factory TargetRun.fromMap(Map<String, dynamic> map) {
    return TargetRun(
      location: map['location'] as String,
    );
  }
}
