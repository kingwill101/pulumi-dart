// ignore_for_file: unused_element, unnecessary_cast

/// A package managed by Zypper. - install: `zypper -y install package` - remove: `zypper -y rm package`
class OSPolicyResourcePackageResourceZypperResponseOsconfigV1alpha {
  /// Package name.
  final String name;

  OSPolicyResourcePackageResourceZypperResponseOsconfigV1alpha({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory OSPolicyResourcePackageResourceZypperResponseOsconfigV1alpha.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceZypperResponseOsconfigV1alpha(
      name: map['name'] as String,
    );
  }
}
