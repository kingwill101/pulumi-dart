// ignore_for_file: unused_element, unnecessary_cast

/// A package managed by APT. - install: `apt-get update && apt-get -y install [name]` - remove: `apt-get -y remove [name]`
class OSPolicyResourcePackageResourceAPT {
  /// Package name.
  final String name;

  /// Creates a new [OSPolicyResourcePackageResourceAPT].
  /// [name] Package name.
  OSPolicyResourcePackageResourceAPT({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory OSPolicyResourcePackageResourceAPT.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceAPT(
      name: map['name'] as String,
    );
  }
}
