// ignore_for_file: unused_element, unnecessary_cast


class GetIndustrialPidOrganizationsOrganization {
  /// The ID of the Pid Organization.
  final String id;
  /// The parent organization id.
  final String parentPidOrganizationId;
  /// The organization id.
  final String pidOrganizationId;
  /// The organization level.
  final int pidOrganizationLevel;
  /// The organization name.
  final String pidOrganizationName;

  /// Creates a new [GetIndustrialPidOrganizationsOrganization].
  /// [id] The ID of the Pid Organization.
  /// [parentPidOrganizationId] The parent organization id.
  /// [pidOrganizationId] The organization id.
  /// [pidOrganizationLevel] The organization level.
  /// [pidOrganizationName] The organization name.
  GetIndustrialPidOrganizationsOrganization({
    required this.id,
    required this.parentPidOrganizationId,
    required this.pidOrganizationId,
    required this.pidOrganizationLevel,
    required this.pidOrganizationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'parentPidOrganizationId': parentPidOrganizationId,
      'pidOrganizationId': pidOrganizationId,
      'pidOrganizationLevel': pidOrganizationLevel,
      'pidOrganizationName': pidOrganizationName,
    };
  }

  factory GetIndustrialPidOrganizationsOrganization.fromMap(Map<String, dynamic> map) {
    return GetIndustrialPidOrganizationsOrganization(
      id: map['id'] as String,
      parentPidOrganizationId: map['parentPidOrganizationId'] as String,
      pidOrganizationId: map['pidOrganizationId'] as String,
      pidOrganizationLevel: map['pidOrganizationLevel'] as int,
      pidOrganizationName: map['pidOrganizationName'] as String,
    );
  }
}

