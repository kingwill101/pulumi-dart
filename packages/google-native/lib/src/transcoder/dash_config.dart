// ignore_for_file: unused_element, unnecessary_cast

import 'dash_config_segment_reference_scheme.dart';

/// `DASH` manifest configuration.
class DashConfig {
  /// The segment reference scheme for a `DASH` manifest. The default is `SEGMENT_LIST`.
  final DashConfigSegmentReferenceScheme? segmentReferenceScheme;

  /// Creates a new [DashConfig].
  /// [segmentReferenceScheme] The segment reference scheme for a `DASH` manifest. The default is `SEGMENT_LIST`.
  DashConfig({
    this.segmentReferenceScheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'segmentReferenceScheme': ?segmentReferenceScheme == null ? null : segmentReferenceScheme!.value,
    };
  }

  factory DashConfig.fromMap(Map<String, dynamic> map) {
    return DashConfig(
      segmentReferenceScheme: map['segmentReferenceScheme'] == null ? null : DashConfigSegmentReferenceScheme.fromValue(map['segmentReferenceScheme'] as String),
    );
  }
}

