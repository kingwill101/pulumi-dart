// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_run_v1_get_domain_mapping_args_doc}
/// Arguments for getDomainMapping.
/// {@endtemplate}
/// {@macro pulumi_run_v1_get_domain_mapping_args_doc}
class GetDomainMappingArgs {
  final pulumi.Input<String> domainmappingId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDomainMappingArgs].
  /// [domainmappingId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDomainMappingArgs({
    required String domainmappingId,
    required String location,
    String? project,
  })  : domainmappingId = pulumi.Input.asInput<String>(domainmappingId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

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

  factory GetDomainMappingArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainMappingArgs(
      domainmappingId: map['domainmappingId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
