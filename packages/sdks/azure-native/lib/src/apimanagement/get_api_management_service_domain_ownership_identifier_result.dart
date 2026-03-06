// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApiManagementServiceDomainOwnershipIdentifier.
class GetApiManagementServiceDomainOwnershipIdentifierResult {
  /// The domain ownership identifier value.
  final String domainOwnershipIdentifier;

  /// Creates a new [GetApiManagementServiceDomainOwnershipIdentifierResult].
  /// [domainOwnershipIdentifier] The domain ownership identifier value.
  const GetApiManagementServiceDomainOwnershipIdentifierResult({
    required this.domainOwnershipIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainOwnershipIdentifier': domainOwnershipIdentifier,
    };
  }

  factory GetApiManagementServiceDomainOwnershipIdentifierResult.fromMap(Map<String, dynamic> map) {
    return GetApiManagementServiceDomainOwnershipIdentifierResult(
      domainOwnershipIdentifier: map['domainOwnershipIdentifier'] as String,
    );
  }
}

