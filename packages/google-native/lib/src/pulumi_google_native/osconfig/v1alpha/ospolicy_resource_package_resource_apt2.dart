// ignore_for_file: unused_element, unnecessary_cast

/// A package managed by APT. - install: `apt-get update && apt-get -y install [name]` - remove: `apt-get -y remove [name]`
class OSPolicyResourcePackageResourceAPT2 {
  /// Package name.
  final String name;

  OSPolicyResourcePackageResourceAPT2({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory OSPolicyResourcePackageResourceAPT2.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceAPT2(
      name: map['name'] as String,
    );
  }
}
