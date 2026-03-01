// ignore_for_file: unused_element, unnecessary_cast


/// An access policy entry.
class ServiceAccessPolicyEntry {
  /// An Azure AD object ID (User or Apps) that is allowed access to the FHIR service.
  final String objectId;

  /// Creates a new [ServiceAccessPolicyEntry].
  /// [objectId] An Azure AD object ID (User or Apps) that is allowed access to the FHIR service.
  ServiceAccessPolicyEntry({
    required this.objectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectId': objectId,
    };
  }

  factory ServiceAccessPolicyEntry.fromMap(Map<String, dynamic> map) {
    return ServiceAccessPolicyEntry(
      objectId: map['objectId'] as String,
    );
  }
}

