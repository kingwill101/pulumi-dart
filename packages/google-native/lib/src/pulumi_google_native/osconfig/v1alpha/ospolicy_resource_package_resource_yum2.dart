// ignore_for_file: unused_element, unnecessary_cast

/// A package managed by YUM. - install: `yum -y install package` - remove: `yum -y remove package`
class OSPolicyResourcePackageResourceYUM2 {
  /// Package name.
  final String name;

  OSPolicyResourcePackageResourceYUM2({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory OSPolicyResourcePackageResourceYUM2.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceYUM2(
      name: map['name'] as String,
    );
  }
}
