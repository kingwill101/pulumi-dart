// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getDomainMapping.
class GetDomainMappingArgs4 {
  final Input<String> domainmappingId;
  final Input<String> location;
  final Input<String>? project;

  GetDomainMappingArgs4({
    required this.domainmappingId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainmappingId'] = domainmappingId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDomainMappingArgs4.fromMap(Map<String, dynamic> map) {
    return GetDomainMappingArgs4(
      domainmappingId: Input.asInput<String>(map['domainmappingId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
