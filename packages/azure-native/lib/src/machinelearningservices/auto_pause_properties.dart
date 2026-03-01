// ignore_for_file: unused_element, unnecessary_cast


/// Auto pause properties
class AutoPauseProperties {
  final int? delayInMinutes;
  final bool? enabled;

  /// Creates a new [AutoPauseProperties].
  /// [delayInMinutes] Optional.
  /// [enabled] Optional.
  AutoPauseProperties({
    this.delayInMinutes,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delayInMinutes': ?delayInMinutes,
      'enabled': ?enabled,
    };
  }

  factory AutoPauseProperties.fromMap(Map<String, dynamic> map) {
    return AutoPauseProperties(
      delayInMinutes: map['delayInMinutes'] == null ? null : map['delayInMinutes'] as int,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

