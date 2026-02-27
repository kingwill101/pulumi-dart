// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getIdentityAwareProxyClient.
class GetIdentityAwareProxyClientArgs {
  final pulumi.Input<String> brandId;
  final pulumi.Input<String> identityAwareProxyClientId;
  final pulumi.Input<String>? project;

  GetIdentityAwareProxyClientArgs({
    required this.brandId,
    required this.identityAwareProxyClientId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['brandId'] = brandId;
    map['identityAwareProxyClientId'] = identityAwareProxyClientId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetIdentityAwareProxyClientArgs.fromMap(Map<String, dynamic> map) {
    return GetIdentityAwareProxyClientArgs(
      brandId: pulumi.Input.asInput<String>(map['brandId']),
      identityAwareProxyClientId:
          pulumi.Input.asInput<String>(map['identityAwareProxyClientId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
