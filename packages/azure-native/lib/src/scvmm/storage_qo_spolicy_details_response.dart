// ignore_for_file: unused_element, unnecessary_cast


/// The StorageQoSPolicyDetails definition.
class StorageQoSPolicyDetailsResponse {
  /// The ID of the QoS policy.
  final String? id;
  /// The name of the policy.
  final String? name;

  /// Creates a new [StorageQoSPolicyDetailsResponse].
  /// [id] The ID of the QoS policy.
  /// [name] The name of the policy.
  StorageQoSPolicyDetailsResponse({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory StorageQoSPolicyDetailsResponse.fromMap(Map<String, dynamic> map) {
    return StorageQoSPolicyDetailsResponse(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

