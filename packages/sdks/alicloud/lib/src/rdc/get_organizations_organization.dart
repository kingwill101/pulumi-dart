// ignore_for_file: unused_element, unnecessary_cast


class GetOrganizationsOrganization {
  /// The ID of the Organization.
  final String id;
  /// The first ID of the resource.
  final String organizationId;
  /// Company name.
  final String organizationName;

  /// Creates a new [GetOrganizationsOrganization].
  /// [id] The ID of the Organization.
  /// [organizationId] The first ID of the resource.
  /// [organizationName] Company name.
  GetOrganizationsOrganization({
    required this.id,
    required this.organizationId,
    required this.organizationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'organizationId': organizationId,
      'organizationName': organizationName,
    };
  }

  factory GetOrganizationsOrganization.fromMap(Map<String, dynamic> map) {
    return GetOrganizationsOrganization(
      id: map['id'] as String,
      organizationId: map['organizationId'] as String,
      organizationName: map['organizationName'] as String,
    );
  }
}

