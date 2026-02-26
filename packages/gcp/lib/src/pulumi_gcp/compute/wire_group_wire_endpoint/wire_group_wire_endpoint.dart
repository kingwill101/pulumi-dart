// ignore_for_file: unused_element, unnecessary_cast

class WireGroupWireEndpoint {
  /// (Output)
  final String? interconnect;

  /// (Output)
  final int? vlanTag;

  WireGroupWireEndpoint({
    this.interconnect,
    this.vlanTag,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final interconnectValue = interconnect;
    if (interconnectValue != null) {
      map['interconnect'] = interconnectValue;
    }
    final vlanTagValue = vlanTag;
    if (vlanTagValue != null) {
      map['vlanTag'] = vlanTagValue;
    }
    return map;
  }

  factory WireGroupWireEndpoint.fromMap(Map<String, dynamic> map) {
    return WireGroupWireEndpoint(
      interconnect:
          map['interconnect'] == null ? null : map['interconnect'] as String,
      vlanTag: map['vlanTag'] == null ? null : map['vlanTag'] as int,
    );
  }
}
