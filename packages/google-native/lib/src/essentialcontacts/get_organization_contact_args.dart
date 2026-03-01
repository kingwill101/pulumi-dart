// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_essentialcontacts_v1_get_organization_contact_args_doc}
/// Arguments for getOrganizationContact.
/// {@endtemplate}
/// {@macro pulumi_essentialcontacts_v1_get_organization_contact_args_doc}
class GetOrganizationContactArgs {
  final pulumi.Input<String> contactId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetOrganizationContactArgs].
  /// [contactId] Required.
  /// [organizationId] Required.
  GetOrganizationContactArgs({
    required String contactId,
    required String organizationId,
  }) : contactId = pulumi.Input.asInput<String>(contactId),
       organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactId': contactId,
      'organizationId': organizationId,
    };
  }

  factory GetOrganizationContactArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationContactArgs(
      contactId: map['contactId'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
