// ignore_for_file: unused_element, unnecessary_cast

import 'dash_config_segment_reference_scheme.dart';

/// `DASH` manifest configuration.
class DashConfig {
  /// The segment reference scheme for a `DASH` manifest. The default is `SEGMENT_LIST`.
  final DashConfigSegmentReferenceScheme? segmentReferenceScheme;

  DashConfig({
    this.segmentReferenceScheme,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final segmentReferenceSchemeValue = segmentReferenceScheme;
    if (segmentReferenceSchemeValue != null) {
      map['segmentReferenceScheme'] = segmentReferenceSchemeValue.value;
    }
    return map;
  }

  factory DashConfig.fromMap(Map<String, dynamic> map) {
    return DashConfig(
      segmentReferenceScheme: map['segmentReferenceScheme'] == null
          ? null
          : DashConfigSegmentReferenceScheme.fromValue(
              map['segmentReferenceScheme'] as String),
    );
  }
}
