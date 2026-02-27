// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSecurityProfile.
class GetSecurityProfileNetworksecurityV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> securityProfileId;

  GetSecurityProfileNetworksecurityV1beta1Args({
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

  factory GetSecurityProfileNetworksecurityV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetSecurityProfileNetworksecurityV1beta1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      securityProfileId: pulumi.Input.asInput<String>(map['securityProfileId']),
    );
  }
}
