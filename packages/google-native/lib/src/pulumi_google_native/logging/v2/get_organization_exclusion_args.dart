// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getOrganizationExclusion.
class GetOrganizationExclusionArgs {
  final Input<String> exclusionId;
  final Input<String> organizationId;

  GetOrganizationExclusionArgs({
    required this.exclusionId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exclusionId'] = exclusionId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetOrganizationExclusionArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationExclusionArgs(
      exclusionId: Input.asInput<String>(map['exclusionId']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
