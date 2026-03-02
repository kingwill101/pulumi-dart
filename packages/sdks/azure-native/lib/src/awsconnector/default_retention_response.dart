// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of DefaultRetention
class DefaultRetentionResponse {
  /// The number of days that you want to specify for the default retention period. If Object Lock is turned on, you must specify ``Mode`` and specify either ``Days`` or ``Years``.
  final pulumi.Input<int>? days;
  /// The default Object Lock retention mode you want to apply to new objects placed in the specified bucket. If Object Lock is turned on, you must specify ``Mode`` and specify either ``Days`` or ``Years``.
  final pulumi.Input<String>? mode;
  /// The number of years that you want to specify for the default retention period. If Object Lock is turned on, you must specify ``Mode`` and specify either ``Days`` or ``Years``.
  final pulumi.Input<int>? years;

  /// Creates a new [DefaultRetentionResponse].
  /// [days] The number of days that you want to specify for the default retention period. If Object Lock is turned on, you must specify ``Mode`` and specify either ``Days`` or ``Years``.
  /// [mode] The default Object Lock retention mode you want to apply to new objects placed in the specified bucket. If Object Lock is turned on, you must specify ``Mode`` and specify either ``Days`` or ``Years``.
  /// [years] The number of years that you want to specify for the default retention period. If Object Lock is turned on, you must specify ``Mode`` and specify either ``Days`` or ``Years``.
  DefaultRetentionResponse({
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

  factory DefaultRetentionResponse.fromMap(Map<String, dynamic> map) {
    return DefaultRetentionResponse(
      days: map['days'] == null ? null : (map['days'] as int).input(),
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      years: map['years'] == null ? null : (map['years'] as int).input(),
    );
  }
}

