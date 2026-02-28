// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_mapping_spec.dart';
import 'object_meta.dart';

/// {@template pulumi_run_v1_domain_mapping_args_doc}
/// The set of arguments for DomainMapping.
/// {@endtemplate}
/// {@macro pulumi_run_v1_domain_mapping_args_doc}
class DomainMappingArgs {
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

  /// Creates a new [DomainMappingArgs].
  /// [apiVersion] The API version for this call such as "domains.cloudrun.com/v1".
  /// [dryRun] Indicates that the server should validate the request and populate default values without persisting the request. Supported values: `all`
  /// [kind] The kind of resource, in this case "DomainMapping".
  /// [location] Optional.
  /// [metadata] Metadata associated with this BuildTemplate.
  /// [project] Optional.
  /// [spec] The spec for this DomainMapping.
  DomainMappingArgs({
    String? apiVersion,
    String? dryRun,
    String? kind,
    String? location,
    ObjectMeta? metadata,
    String? project,
    DomainMappingSpec? spec,
  })  : apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
        dryRun = pulumi.Input.asOptionalInput<String>(dryRun),
        kind = pulumi.Input.asOptionalInput<String>(kind),
        location = pulumi.Input.asOptionalInput<String>(location),
        metadata = pulumi.Input.asOptionalInput<ObjectMeta>(metadata),
        project = pulumi.Input.asOptionalInput<String>(project),
        spec = pulumi.Input.asOptionalInput<DomainMappingSpec>(spec);

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

  factory DomainMappingArgs.fromMap(Map<String, dynamic> map) {
    return DomainMappingArgs(
      apiVersion:
          map['apiVersion'] == null ? null : map['apiVersion'] as String,
      dryRun: map['dryRun'] == null ? null : map['dryRun'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      metadata: map['metadata'] == null
          ? null
          : ObjectMeta.fromMap(
              (map['metadata'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      spec: map['spec'] == null
          ? null
          : DomainMappingSpec.fromMap(
              (map['spec'] as Map).cast<String, dynamic>()),
    );
  }
}
