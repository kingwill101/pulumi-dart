// ignore_for_file: unused_element, unnecessary_cast

class WireGroupEndpointInterconnect {
  /// (Optional)
  final String? interconnect;

  /// The identifier for this object. Format specified above.
  final String interconnectName;

  /// VLAN tags for the interconnect.
  final List<int>? vlanTags;

  /// Creates a new [WireGroupEndpointInterconnect].
  /// [interconnect] (Optional)
  /// [interconnectName] The identifier for this object. Format specified above.
  /// [vlanTags] VLAN tags for the interconnect.
  WireGroupEndpointInterconnect({
    this.interconnect,
    required this.interconnectName,
    this.vlanTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interconnect': ?interconnect,
      'interconnectName': interconnectName,
      'vlanTags': ?vlanTags,
    };
  }

  factory WireGroupEndpointInterconnect.fromMap(Map<String, dynamic> map) {
    return WireGroupEndpointInterconnect(
      interconnect: map['interconnect'] == null
          ? null
          : map['interconnect'] as String,
      interconnectName: map['interconnectName'] as String,
      vlanTags: map['vlanTags'] == null
          ? null
          : (map['vlanTags'] as List).cast<int>(),
    );
  }
}
