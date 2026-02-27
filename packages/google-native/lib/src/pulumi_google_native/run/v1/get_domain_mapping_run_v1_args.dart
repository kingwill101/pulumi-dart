// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDomainMapping.
class GetDomainMappingRunV1Args {
  final pulumi.Input<String> domainmappingId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetDomainMappingRunV1Args({
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

  factory GetDomainMappingRunV1Args.fromMap(Map<String, dynamic> map) {
    return GetDomainMappingRunV1Args(
      domainmappingId: pulumi.Input.asInput<String>(map['domainmappingId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
