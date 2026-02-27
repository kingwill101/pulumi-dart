// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSecurityProfile.
class GetSecurityProfileArgs {
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> securityProfileId;

  GetSecurityProfileArgs({
    required this.organizationId,
    required this.securityProfileId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organizationId'] = organizationId;
    map['securityProfileId'] = securityProfileId;
    return map;
  }

  factory GetSecurityProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityProfileArgs(
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      securityProfileId: pulumi.Input.asInput<String>(map['securityProfileId']),
    );
  }
}
