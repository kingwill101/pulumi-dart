// ignore_for_file: unused_element, unnecessary_cast

class WireGroupWireProperties {
  /// The configuration of a wire's bandwidth allocation.
  /// ALLOCATE_PER_WIRE: configures a separate unmetered bandwidth allocation (and associated charges) for each wire in the group.
  /// SHARED_WITH_WIRE_GROUP: this is the default behavior, which configures one unmetered bandwidth allocation for the wire group. The unmetered bandwidth is divided equally across each wire in the group, but dynamic
  /// throttling reallocates unused unmetered bandwidth from unused or underused wires to other wires in the group.
  final String bandwidthAllocation;

  /// The unmetered bandwidth setting.
  final int? bandwidthUnmetered;

  /// Response when a fault is detected in a pseudowire:
  /// NONE: default.
  /// DISABLE_PORT: set the port line protocol down when inline probes detect a fault. This setting is only permitted on port mode pseudowires.
  final String? faultResponse;

  /// Creates a new [WireGroupWireProperties].
  /// [bandwidthAllocation] The configuration of a wire's bandwidth allocation.
  /// [bandwidthUnmetered] The unmetered bandwidth setting.
  /// [faultResponse] Response when a fault is detected in a pseudowire:
  WireGroupWireProperties({
    required this.bandwidthAllocation,
    this.bandwidthUnmetered,
    this.faultResponse,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bandwidthAllocation'] = bandwidthAllocation;
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

  factory WireGroupWireProperties.fromMap(Map<String, dynamic> map) {
    return WireGroupWireProperties(
      bandwidthAllocation: map['bandwidthAllocation'] as String,
      bandwidthUnmetered: map['bandwidthUnmetered'] == null
          ? null
          : map['bandwidthUnmetered'] as int,
      faultResponse:
          map['faultResponse'] == null ? null : map['faultResponse'] as String,
    );
  }
}
