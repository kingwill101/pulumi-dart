// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSecurityProfileGroup.
class GetSecurityProfileGroupArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> securityProfileGroupId;

  GetSecurityProfileGroupArgs({
    required this.location,
    required this.organizationId,
    required this.securityProfileGroupId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['organizationId'] = organizationId;
    map['securityProfileGroupId'] = securityProfileGroupId;
    return map;
  }

  factory GetSecurityProfileGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityProfileGroupArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      securityProfileGroupId:
          pulumi.Input.asInput<String>(map['securityProfileGroupId']),
    );
  }
}
