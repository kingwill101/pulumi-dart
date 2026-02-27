// ignore_for_file: unused_element, unnecessary_cast

/// A package managed by APT. - install: `apt-get update && apt-get -y install [name]` - remove: `apt-get -y remove [name]`
class OSPolicyResourcePackageResourceAPTResponseOsconfigV1alpha {
  /// Package name.
  final String name;

  OSPolicyResourcePackageResourceAPTResponseOsconfigV1alpha({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory OSPolicyResourcePackageResourceAPTResponseOsconfigV1alpha.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceAPTResponseOsconfigV1alpha(
      name: map['name'] as String,
    );
  }
}
