// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getProtection.
class GetProtectionResult {
  final String id;
  /// Name of the protection.
  final String name;
  /// ARN of the protection.
  final String protectionArn;
  final String protectionId;
  final String resourceArn;

  /// Creates a new [GetProtectionResult].
  /// [id] Required.
  /// [name] Name of the protection.
  /// [protectionArn] ARN of the protection.
  /// [protectionId] Required.
  /// [resourceArn] Required.
  const GetProtectionResult({
    required this.id,
    required this.name,
    required this.protectionArn,
    required this.protectionId,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'protectionArn': protectionArn,
      'protectionId': protectionId,
      'resourceArn': resourceArn,
    };
  }

  factory GetProtectionResult.fromMap(Map<String, dynamic> map) {
    return GetProtectionResult(
      id: map['id'] as String,
      name: map['name'] as String,
      protectionArn: map['protectionArn'] as String,
      protectionId: map['protectionId'] as String,
      resourceArn: map['resourceArn'] as String,
    );
  }
}
