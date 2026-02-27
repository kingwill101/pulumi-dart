// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganization.
class GetOrganizationArgs {
  final pulumi.Input<String> organizationId;

  GetOrganizationArgs({
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetOrganizationArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationArgs(
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
