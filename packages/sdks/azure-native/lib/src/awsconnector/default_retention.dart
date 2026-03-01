// ignore_for_file: unused_element, unnecessary_cast


/// Definition of DefaultRetention
class DefaultRetention {
  /// The number of days that you want to specify for the default retention period. If Object Lock is turned on, you must specify ``Mode`` and specify either ``Days`` or ``Years``.
  final int? days;
  /// The default Object Lock retention mode you want to apply to new objects placed in the specified bucket. If Object Lock is turned on, you must specify ``Mode`` and specify either ``Days`` or ``Years``.
  final String? mode;
  /// The number of years that you want to specify for the default retention period. If Object Lock is turned on, you must specify ``Mode`` and specify either ``Days`` or ``Years``.
  final int? years;

  /// Creates a new [DefaultRetention].
  /// [days] The number of days that you want to specify for the default retention period. If Object Lock is turned on, you must specify ``Mode`` and specify either ``Days`` or ``Years``.
  /// [mode] The default Object Lock retention mode you want to apply to new objects placed in the specified bucket. If Object Lock is turned on, you must specify ``Mode`` and specify either ``Days`` or ``Years``.
  /// [years] The number of years that you want to specify for the default retention period. If Object Lock is turned on, you must specify ``Mode`` and specify either ``Days`` or ``Years``.
  DefaultRetention({
    this.days,
    this.mode,
    this.years,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
      'mode': ?mode,
      'years': ?years,
    };
  }

  factory DefaultRetention.fromMap(Map<String, dynamic> map) {
    return DefaultRetention(
      days: map['days'] == null ? null : map['days'] as int,
      mode: map['mode'] == null ? null : map['mode'] as String,
      years: map['years'] == null ? null : map['years'] as int,
    );
  }
}

