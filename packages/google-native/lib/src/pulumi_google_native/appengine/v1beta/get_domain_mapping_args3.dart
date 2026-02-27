// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getDomainMapping.
class GetDomainMappingArgs3 {
  final Input<String> appId;
  final Input<String> domainMappingId;

  GetDomainMappingArgs3({
    required this.appId,
    required this.domainMappingId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    map['domainMappingId'] = domainMappingId;
    return map;
  }

  factory GetDomainMappingArgs3.fromMap(Map<String, dynamic> map) {
    return GetDomainMappingArgs3(
      appId: Input.asInput<String>(map['appId']),
      domainMappingId: Input.asInput<String>(map['domainMappingId']),
    );
  }
}
