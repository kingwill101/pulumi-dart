// ignore_for_file: unused_element, unnecessary_cast

/// A package managed by Zypper. - install: `zypper -y install package` - remove: `zypper -y rm package`
class OSPolicyResourcePackageResourceZypper2 {
  /// Package name.
  final String name;

  OSPolicyResourcePackageResourceZypper2({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory OSPolicyResourcePackageResourceZypper2.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceZypper2(
      name: map['name'] as String,
    );
  }
}
