// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getOrganizationServiceAccount.
class GetOrganizationServiceAccountArgs {
  /// The organization ID the service account was created for.
  final Input<String> organizationId;

  GetOrganizationServiceAccountArgs({
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetOrganizationServiceAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationServiceAccountArgs(
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
