// ignore_for_file: unused_element, unnecessary_cast


class GetLaunchTemplateMonitoring {
  final bool enabled;

  /// Creates a new [GetLaunchTemplateMonitoring].
  /// [enabled] Required.
  GetLaunchTemplateMonitoring({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetLaunchTemplateMonitoring.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateMonitoring(
      enabled: map['enabled'] as bool,
    );
  }
}

