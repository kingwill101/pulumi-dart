// ignore_for_file: unused_element, unnecessary_cast


class MonitorEnvironmentPropertyEnvironmentInfo {
  /// The ID of the Dynatrace environment to be created.
  final String environmentId;

  /// Creates a new [MonitorEnvironmentPropertyEnvironmentInfo].
  /// [environmentId] The ID of the Dynatrace environment to be created.
  MonitorEnvironmentPropertyEnvironmentInfo({
    required this.environmentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
    };
  }

  factory MonitorEnvironmentPropertyEnvironmentInfo.fromMap(Map<String, dynamic> map) {
    return MonitorEnvironmentPropertyEnvironmentInfo(
      environmentId: map['environmentId'] as String,
    );
  }
}

