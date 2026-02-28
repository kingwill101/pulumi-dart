// ignore_for_file: unused_element, unnecessary_cast

class WireGroupWireWireProperty {
  /// The unmetered bandwidth setting.
  final int? bandwidthUnmetered;

  /// Response when a fault is detected in a pseudowire:
  /// NONE: default.
  /// DISABLE_PORT: set the port line protocol down when inline probes detect a fault. This setting is only permitted on port mode pseudowires.
  final String? faultResponse;

  /// Creates a new [WireGroupWireWireProperty].
  /// [bandwidthUnmetered] The unmetered bandwidth setting.
  /// [faultResponse] Response when a fault is detected in a pseudowire:
  WireGroupWireWireProperty({
    this.bandwidthUnmetered,
    this.faultResponse,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bandwidthUnmeteredValue = bandwidthUnmetered;
    if (bandwidthUnmeteredValue != null) {
      map['bandwidthUnmetered'] = bandwidthUnmeteredValue;
    }
    final faultResponseValue = faultResponse;
    if (faultResponseValue != null) {
      map['faultResponse'] = faultResponseValue;
    }
    return map;
  }

  factory WireGroupWireWireProperty.fromMap(Map<String, dynamic> map) {
    return WireGroupWireWireProperty(
      bandwidthUnmetered: map['bandwidthUnmetered'] == null
          ? null
          : map['bandwidthUnmetered'] as int,
      faultResponse:
          map['faultResponse'] == null ? null : map['faultResponse'] as String,
    );
  }
}
