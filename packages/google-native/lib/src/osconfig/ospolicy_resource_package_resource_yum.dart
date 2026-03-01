// ignore_for_file: unused_element, unnecessary_cast

/// A package managed by YUM. - install: `yum -y install package` - remove: `yum -y remove package`
class OSPolicyResourcePackageResourceYUM {
  /// Package name.
  final String name;

  /// Creates a new [OSPolicyResourcePackageResourceYUM].
  /// [name] Package name.
  OSPolicyResourcePackageResourceYUM({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory OSPolicyResourcePackageResourceYUM.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceYUM(name: map['name'] as String);
  }
}
