// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'domain_mapping_spec.dart';
import 'object_meta.dart';

/// The set of arguments for DomainMapping.
class DomainMappingArgs4 {
  /// The API version for this call such as "domains.cloudrun.com/v1".
  final Input<String>? apiVersion;

  /// Indicates that the server should validate the request and populate default values without persisting the request. Supported values: `all`
  final Input<String>? dryRun;

  /// The kind of resource, in this case "DomainMapping".
  final Input<String>? kind;
  final Input<String>? location;

  /// Metadata associated with this BuildTemplate.
  final Input<ObjectMeta>? metadata;
  final Input<String>? project;

  /// The spec for this DomainMapping.
  final Input<DomainMappingSpec>? spec;

  DomainMappingArgs4({
    this.apiVersion,
    this.dryRun,
    this.kind,
    this.location,
    this.metadata,
    this.project,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiVersionValue = apiVersion;
    if (apiVersionValue != null) {
      map['apiVersion'] = apiVersionValue;
    }
    final dryRunValue = dryRun;
    if (dryRunValue != null) {
      map['dryRun'] = dryRunValue;
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] =
          Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(
              metadataValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final specValue = spec;
    if (specValue != null) {
      map['spec'] =
          Input.mapOptionalInputValue<DomainMappingSpec, Map<String, dynamic>>(
              specValue, (value) => value.toMap());
    }
    return map;
  }

  factory DomainMappingArgs4.fromMap(Map<String, dynamic> map) {
    return DomainMappingArgs4(
      apiVersion: Input.asOptionalInput<String>(map['apiVersion']),
      dryRun: Input.asOptionalInput<String>(map['dryRun']),
      kind: Input.asOptionalInput<String>(map['kind']),
      location: Input.asOptionalInput<String>(map['location']),
      metadata: Input.asOptionalInput<ObjectMeta>(map['metadata']),
      project: Input.asOptionalInput<String>(map['project']),
      spec: Input.asOptionalInput<DomainMappingSpec>(map['spec']),
    );
  }
}
