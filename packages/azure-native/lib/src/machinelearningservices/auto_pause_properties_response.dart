// ignore_for_file: unused_element, unnecessary_cast


/// Auto pause properties
class AutoPausePropertiesResponse {
  final int? delayInMinutes;
  final bool? enabled;

  /// Creates a new [AutoPausePropertiesResponse].
  /// [delayInMinutes] Optional.
  /// [enabled] Optional.
  AutoPausePropertiesResponse({
    this.delayInMinutes,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delayInMinutes': ?delayInMinutes,
      'enabled': ?enabled,
    };
  }

  factory AutoPausePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AutoPausePropertiesResponse(
      delayInMinutes: map['delayInMinutes'] == null ? null : map['delayInMinutes'] as int,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

