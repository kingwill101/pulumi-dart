// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getOrganizationContact.
class GetOrganizationContactArgs {
  final Input<String> contactId;
  final Input<String> organizationId;

  GetOrganizationContactArgs({
    required this.contactId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contactId'] = contactId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetOrganizationContactArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationContactArgs(
      contactId: Input.asInput<String>(map['contactId']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
