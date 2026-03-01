// ignore_for_file: unused_element, unnecessary_cast


/// The vlan match conditions that need to be matched.
class VlanMatchConditionResponse {
  /// List of inner vlans that need to be matched.
  final List<String>? innerVlans;
  /// List of vlan group names that need to be matched.
  final List<String>? vlanGroupNames;
  /// List of vlans that need to be matched.
  final List<String>? vlans;

  /// Creates a new [VlanMatchConditionResponse].
  /// [innerVlans] List of inner vlans that need to be matched.
  /// [vlanGroupNames] List of vlan group names that need to be matched.
  /// [vlans] List of vlans that need to be matched.
  VlanMatchConditionResponse({
    this.innerVlans,
    this.vlanGroupNames,
    this.vlans,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'innerVlans': ?innerVlans,
      'vlanGroupNames': ?vlanGroupNames,
      'vlans': ?vlans,
    };
  }

  factory VlanMatchConditionResponse.fromMap(Map<String, dynamic> map) {
    return VlanMatchConditionResponse(
      innerVlans: map['innerVlans'] == null ? null : (map['innerVlans'] as List).cast<String>(),
      vlanGroupNames: map['vlanGroupNames'] == null ? null : (map['vlanGroupNames'] as List).cast<String>(),
      vlans: map['vlans'] == null ? null : (map['vlans'] as List).cast<String>(),
    );
  }
}

