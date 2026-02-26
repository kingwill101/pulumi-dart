// ignore_for_file: unused_element, unnecessary_cast

class VpnConnectionDetailCloudRouter {
  /// The resource name of VPN connection
  final String? name;

  VpnConnectionDetailCloudRouter({
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory VpnConnectionDetailCloudRouter.fromMap(Map<String, dynamic> map) {
    return VpnConnectionDetailCloudRouter(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
