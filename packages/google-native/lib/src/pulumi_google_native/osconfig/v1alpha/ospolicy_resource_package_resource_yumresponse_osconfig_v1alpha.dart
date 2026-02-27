// ignore_for_file: unused_element, unnecessary_cast

/// A package managed by YUM. - install: `yum -y install package` - remove: `yum -y remove package`
class OSPolicyResourcePackageResourceYUMResponseOsconfigV1alpha {
  /// Package name.
  final String name;

  OSPolicyResourcePackageResourceYUMResponseOsconfigV1alpha({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory OSPolicyResourcePackageResourceYUMResponseOsconfigV1alpha.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceYUMResponseOsconfigV1alpha(
      name: map['name'] as String,
    );
  }
}
