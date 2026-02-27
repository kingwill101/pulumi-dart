// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getSecurityProfileGroup.
class GetSecurityProfileGroupArgs {
  final Input<String> location;
  final Input<String> organizationId;
  final Input<String> securityProfileGroupId;

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
      location: Input.asInput<String>(map['location']),
      organizationId: Input.asInput<String>(map['organizationId']),
      securityProfileGroupId:
          Input.asInput<String>(map['securityProfileGroupId']),
    );
  }
}
