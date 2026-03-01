// ignore_for_file: unused_element, unnecessary_cast


/// Managed service identity (either system assigned, or none)
class SystemAssignedServiceIdentity {
  /// Type of managed service identity (either system assigned, or none).
  final String type;

  /// Creates a new [SystemAssignedServiceIdentity].
  /// [type] Type of managed service identity (either system assigned, or none).
  SystemAssignedServiceIdentity({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory SystemAssignedServiceIdentity.fromMap(Map<String, dynamic> map) {
    return SystemAssignedServiceIdentity(
      type: map['type'] as String,
    );
  }
}

