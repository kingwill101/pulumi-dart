// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_mapping_spec.dart';
import 'object_meta.dart';

/// The set of arguments for DomainMapping.
class DomainMappingRunV1Args {
  /// The API version for this call such as "domains.cloudrun.com/v1".
  final pulumi.Input<String>? apiVersion;

  /// Indicates that the server should validate the request and populate default values without persisting the request. Supported values: `all`
  final pulumi.Input<String>? dryRun;

  /// The kind of resource, in this case "DomainMapping".
  final pulumi.Input<String>? kind;
  final pulumi.Input<String>? location;

  /// Metadata associated with this BuildTemplate.
  final pulumi.Input<ObjectMeta>? metadata;
  final pulumi.Input<String>? project;

  /// The spec for this DomainMapping.
  final pulumi.Input<DomainMappingSpec>? spec;

  DomainMappingRunV1Args({
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
          pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(
              metadataValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final specValue = spec;
    if (specValue != null) {
      map['spec'] = pulumi.Input.mapOptionalInputValue<DomainMappingSpec,
          Map<String, dynamic>>(specValue, (value) => value.toMap());
    }
    return map;
  }

  factory DomainMappingRunV1Args.fromMap(Map<String, dynamic> map) {
    return DomainMappingRunV1Args(
      apiVersion: pulumi.Input.asOptionalInput<String>(map['apiVersion']),
      dryRun: pulumi.Input.asOptionalInput<String>(map['dryRun']),
      kind: pulumi.Input.asOptionalInput<String>(map['kind']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      metadata: pulumi.Input.asOptionalInput<ObjectMeta>(map['metadata']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      spec: pulumi.Input.asOptionalInput<DomainMappingSpec>(map['spec']),
    );
  }
}
