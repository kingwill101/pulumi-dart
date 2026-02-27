// ignore_for_file: unused_element, unnecessary_cast

/// A package managed by YUM. - install: `yum -y install package` - remove: `yum -y remove package`
class OSPolicyResourcePackageResourceYUMOsconfigV1alpha {
  /// Package name.
  final String name;

  OSPolicyResourcePackageResourceYUMOsconfigV1alpha({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory OSPolicyResourcePackageResourceYUMOsconfigV1alpha.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceYUMOsconfigV1alpha(
      name: map['name'] as String,
    );
  }
}
