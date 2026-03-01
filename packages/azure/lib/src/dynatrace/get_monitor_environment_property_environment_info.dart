// ignore_for_file: unused_element, unnecessary_cast


class GetMonitorEnvironmentPropertyEnvironmentInfo {
  final String environmentId;

  /// Creates a new [GetMonitorEnvironmentPropertyEnvironmentInfo].
  /// [environmentId] Required.
  GetMonitorEnvironmentPropertyEnvironmentInfo({
    required this.environmentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
    };
  }

  factory GetMonitorEnvironmentPropertyEnvironmentInfo.fromMap(Map<String, dynamic> map) {
    return GetMonitorEnvironmentPropertyEnvironmentInfo(
      environmentId: map['environmentId'] as String,
    );
  }
}

