// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../domain_mapping_metadata/domain_mapping_metadata.dart';
import '../domain_mapping_spec/domain_mapping_spec.dart';

/// The set of arguments for DomainMapping.
class DomainMappingArgs2 {
  /// The location of the cloud run instance. eg us-central1
  final Input<String> location;

  /// Metadata associated with this DomainMapping.
  /// Structure is documented below.
  final Input<DomainMappingMetadata>? metadata;

  /// Name should be a [verified](https://support.google.com/webmasters/answer/9008080) domain
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The spec for this DomainMapping.
  /// Structure is documented below.
  final Input<DomainMappingSpec> spec;

  DomainMappingArgs2({
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
      map['metadata'] = Input.mapOptionalInputValue<DomainMappingMetadata,
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
    map['spec'] = Input.mapInputValue<DomainMappingSpec, Map<String, dynamic>>(
        spec, (value) => value.toMap());
    return map;
  }

  factory DomainMappingArgs2.fromMap(Map<String, dynamic> map) {
    return DomainMappingArgs2(
      location: Input.asInput<String>(map['location']),
      metadata: Input.asOptionalInput<DomainMappingMetadata>(map['metadata']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      spec: Input.asInput<DomainMappingSpec>(map['spec']),
    );
  }
}
