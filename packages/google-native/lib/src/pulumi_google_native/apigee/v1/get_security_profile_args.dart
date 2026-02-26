// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSecurityProfile.
class GetSecurityProfileArgs {
  final Input<String> organizationId;
  final Input<String> securityProfileId;

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
      organizationId: Input.asInput<String>(map['organizationId']),
      securityProfileId: Input.asInput<String>(map['securityProfileId']),
    );
  }
}
