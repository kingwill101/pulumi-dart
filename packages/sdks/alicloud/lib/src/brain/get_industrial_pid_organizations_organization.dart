// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIndustrialPidOrganizationsOrganization {
  /// The ID of the Pid Organization.
  final pulumi.Input<String> id;
  /// The parent organization id.
  final pulumi.Input<String> parentPidOrganizationId;
  /// The organization id.
  final pulumi.Input<String> pidOrganizationId;
  /// The organization level.
  final pulumi.Input<int> pidOrganizationLevel;
  /// The organization name.
  final pulumi.Input<String> pidOrganizationName;

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
      id: (map['id'] as String).input(),
      parentPidOrganizationId: (map['parentPidOrganizationId'] as String).input(),
      pidOrganizationId: (map['pidOrganizationId'] as String).input(),
      pidOrganizationLevel: (map['pidOrganizationLevel'] as int).input(),
      pidOrganizationName: (map['pidOrganizationName'] as String).input(),
    );
  }
}

