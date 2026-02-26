// ignore_for_file: unused_element, unnecessary_cast

class GetBackendServiceLocalityLbPolicyPolicy {
  /// The name of the Backend Service.
  ///
  /// - - -
  final String name;

  GetBackendServiceLocalityLbPolicyPolicy({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetBackendServiceLocalityLbPolicyPolicy.fromMap(
      Map<String, dynamic> map) {
    return GetBackendServiceLocalityLbPolicyPolicy(
      name: map['name'] as String,
    );
  }
}
