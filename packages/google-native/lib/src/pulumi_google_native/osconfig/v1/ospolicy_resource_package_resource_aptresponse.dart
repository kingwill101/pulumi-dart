// ignore_for_file: unused_element, unnecessary_cast

/// A package managed by APT. - install: `apt-get update && apt-get -y install [name]` - remove: `apt-get -y remove [name]`
class OSPolicyResourcePackageResourceAPTResponse {
  /// Package name.
  final String name;

  OSPolicyResourcePackageResourceAPTResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory OSPolicyResourcePackageResourceAPTResponse.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceAPTResponse(
      name: map['name'] as String,
    );
  }
}
