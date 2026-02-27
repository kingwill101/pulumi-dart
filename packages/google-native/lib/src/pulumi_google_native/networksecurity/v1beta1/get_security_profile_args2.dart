// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getSecurityProfile.
class GetSecurityProfileArgs2 {
  final Input<String> location;
  final Input<String> organizationId;
  final Input<String> securityProfileId;

  GetSecurityProfileArgs2({
    required this.location,
    required this.organizationId,
    required this.securityProfileId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['organizationId'] = organizationId;
    map['securityProfileId'] = securityProfileId;
    return map;
  }

  factory GetSecurityProfileArgs2.fromMap(Map<String, dynamic> map) {
    return GetSecurityProfileArgs2(
      location: Input.asInput<String>(map['location']),
      organizationId: Input.asInput<String>(map['organizationId']),
      securityProfileId: Input.asInput<String>(map['securityProfileId']),
    );
  }
}
