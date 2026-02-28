// ignore_for_file: unused_element, unnecessary_cast

class BackendServiceLocalityLbPolicyCustomPolicy {
  /// An optional, arbitrary JSON object with configuration data, understood
  /// by a locally installed custom policy implementation.
  final String? data;

  /// Identifies the custom policy.
  /// The value should match the type the custom implementation is registered
  /// with on the gRPC clients. It should follow protocol buffer
  /// message naming conventions and include the full path (e.g.
  /// myorg.CustomLbPolicy). The maximum length is 256 characters.
  /// Note that specifying the same custom policy more than once for a
  /// backend is not a valid configuration and will be rejected.
  final String name;

  /// Creates a new [BackendServiceLocalityLbPolicyCustomPolicy].
  /// [data] An optional, arbitrary JSON object with configuration data, understood
  /// [name] Identifies the custom policy.
  BackendServiceLocalityLbPolicyCustomPolicy({
    this.data,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataValue = data;
    if (dataValue != null) {
      map['data'] = dataValue;
    }
    map['name'] = name;
    return map;
  }

  factory BackendServiceLocalityLbPolicyCustomPolicy.fromMap(
      Map<String, dynamic> map) {
    return BackendServiceLocalityLbPolicyCustomPolicy(
      data: map['data'] == null ? null : map['data'] as String,
      name: map['name'] as String,
    );
  }
}
