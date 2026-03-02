// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOrganizationsOrganization {
  /// The ID of the Organization.
  final pulumi.Input<String> id;
  /// The first ID of the resource.
  final pulumi.Input<String> organizationId;
  /// Company name.
  final pulumi.Input<String> organizationName;

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
      id: (map['id'] as String).input(),
      organizationId: (map['organizationId'] as String).input(),
      organizationName: (map['organizationName'] as String).input(),
    );
  }
}

