// ignore_for_file: unused_element, unnecessary_cast

class WireGroupEndpointInterconnect {
  /// (Optional)
  final String? interconnect;

  /// The identifier for this object. Format specified above.
  final String interconnectName;

  /// VLAN tags for the interconnect.
  final List<int>? vlanTags;

  WireGroupEndpointInterconnect({
    this.interconnect,
    required this.interconnectName,
    this.vlanTags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final interconnectValue = interconnect;
    if (interconnectValue != null) {
      map['interconnect'] = interconnectValue;
    }
    map['interconnectName'] = interconnectName;
    final vlanTagsValue = vlanTags;
    if (vlanTagsValue != null) {
      map['vlanTags'] = vlanTagsValue;
    }
    return map;
  }

  factory WireGroupEndpointInterconnect.fromMap(Map<String, dynamic> map) {
    return WireGroupEndpointInterconnect(
      interconnect:
          map['interconnect'] == null ? null : map['interconnect'] as String,
      interconnectName: map['interconnectName'] as String,
      vlanTags: map['vlanTags'] == null
          ? null
          : (map['vlanTags'] as List).cast<int>(),
    );
  }
}
