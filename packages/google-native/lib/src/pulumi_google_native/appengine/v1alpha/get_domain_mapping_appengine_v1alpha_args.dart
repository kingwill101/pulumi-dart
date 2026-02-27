// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDomainMapping.
class GetDomainMappingAppengineV1alphaArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String> domainMappingId;

  GetDomainMappingAppengineV1alphaArgs({
    required this.appId,
    required this.domainMappingId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    map['domainMappingId'] = domainMappingId;
    return map;
  }

  factory GetDomainMappingAppengineV1alphaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetDomainMappingAppengineV1alphaArgs(
      appId: pulumi.Input.asInput<String>(map['appId']),
      domainMappingId: pulumi.Input.asInput<String>(map['domainMappingId']),
    );
  }
}
