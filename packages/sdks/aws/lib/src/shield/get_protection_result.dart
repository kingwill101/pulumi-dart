// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getProtection.
class GetProtectionResult {
  final String? id;
  /// Name of the protection.
  final String? name;
  /// ARN of the protection.
  final String? protectionArn;
  final String? protectionId;
  final String? resourceArn;

  /// Creates a new [GetProtectionResult].
  /// [id] Optional.
  /// [name] Name of the protection.
  /// [protectionArn] ARN of the protection.
  /// [protectionId] Optional.
  /// [resourceArn] Optional.
  const GetProtectionResult({
    this.id,
    this.name,
    this.protectionArn,
    this.protectionId,
    this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'protectionArn': ?protectionArn,
      'protectionId': ?protectionId,
      'resourceArn': ?resourceArn,
    };
  }

  factory GetProtectionResult.fromMap(Map<String, dynamic> map) {
    return GetProtectionResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      protectionArn: (() { final guardedValue = map['protectionArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      protectionId: (() { final guardedValue = map['protectionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceArn: (() { final guardedValue = map['resourceArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
