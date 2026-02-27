// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getIdentityAwareProxyClient.
class GetIdentityAwareProxyClientArgs {
  final Input<String> brandId;
  final Input<String> identityAwareProxyClientId;
  final Input<String>? project;

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
      brandId: Input.asInput<String>(map['brandId']),
      identityAwareProxyClientId:
          Input.asInput<String>(map['identityAwareProxyClientId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
