// ignore_for_file: unused_element, unnecessary_cast

class OsPolicyAssignmentOsPolicyResourceGroupResourcePkgZypper {
  /// Package name.
  final String name;

  OsPolicyAssignmentOsPolicyResourceGroupResourcePkgZypper({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory OsPolicyAssignmentOsPolicyResourceGroupResourcePkgZypper.fromMap(
      Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourcePkgZypper(
      name: map['name'] as String,
    );
  }
}
