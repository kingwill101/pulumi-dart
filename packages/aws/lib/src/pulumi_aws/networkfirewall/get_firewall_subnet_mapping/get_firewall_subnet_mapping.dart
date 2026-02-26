// ignore_for_file: unused_element, unnecessary_cast

class GetFirewallSubnetMapping {
  /// The unique identifier for the subnet.
  final String subnetId;

  GetFirewallSubnetMapping({
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['subnetId'] = subnetId;
    return map;
  }

  factory GetFirewallSubnetMapping.fromMap(Map<String, dynamic> map) {
    return GetFirewallSubnetMapping(
      subnetId: map['subnetId'] as String,
    );
  }
}
