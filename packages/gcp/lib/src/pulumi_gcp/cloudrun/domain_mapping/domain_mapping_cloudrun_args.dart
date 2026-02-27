// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../domain_mapping_metadata/domain_mapping_metadata.dart';
import '../domain_mapping_spec/domain_mapping_spec.dart';

/// The set of arguments for DomainMapping.
class DomainMappingCloudrunArgs {
  /// The location of the cloud run instance. eg us-central1
  final pulumi.Input<String> location;

  /// Metadata associated with this DomainMapping.
  /// Structure is documented below.
  final pulumi.Input<DomainMappingMetadata>? metadata;

  /// Name should be a [verified](https://support.google.com/webmasters/answer/9008080) domain
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The spec for this DomainMapping.
  /// Structure is documented below.
  final pulumi.Input<DomainMappingSpec> spec;

  DomainMappingCloudrunArgs({
    required this.location,
    this.metadata,
    this.name,
    this.project,
    required this.spec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = pulumi.Input.mapOptionalInputValue<
          DomainMappingMetadata,
          Map<String, dynamic>>(metadataValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['spec'] =
        pulumi.Input.mapInputValue<DomainMappingSpec, Map<String, dynamic>>(
            spec, (value) => value.toMap());
    return map;
  }

  factory DomainMappingCloudrunArgs.fromMap(Map<String, dynamic> map) {
    return DomainMappingCloudrunArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      metadata:
          pulumi.Input.asOptionalInput<DomainMappingMetadata>(map['metadata']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      spec: pulumi.Input.asInput<DomainMappingSpec>(map['spec']),
    );
  }
}
