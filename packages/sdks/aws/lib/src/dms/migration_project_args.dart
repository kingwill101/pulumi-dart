// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_project_schema_conversion_application_attributes.dart';
import 'migration_project_source_data_provider_descriptor.dart';
import 'migration_project_target_data_provider_descriptor.dart';
import 'migration_project_timeouts.dart';

/// {@template pulumi_dms_migration_project_migration_project_args_doc}
/// The set of arguments for MigrationProject.
/// {@endtemplate}
/// {@macro pulumi_dms_migration_project_migration_project_args_doc}
class MigrationProjectArgs {
  /// User-friendly description of the migration project.
  final pulumi.Input<String?>? description;
  /// ARN of the instance profile associated with the migration project.
  final pulumi.Input<String> instanceProfileArn;
  /// User-friendly name for the migration project.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Schema conversion application attributes, including the S3 bucket path and S3 role ARN. See `schemaConversionApplicationAttributes` Block below.
  final pulumi.Input<MigrationProjectSchemaConversionApplicationAttributes?>? schemaConversionApplicationAttributes;
  /// Information about the source data provider. See `sourceDataProviderDescriptor` Block below.
  final pulumi.Input<List<MigrationProjectSourceDataProviderDescriptor>> sourceDataProviderDescriptors;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Information about the target data provider. See `targetDataProviderDescriptor` Block below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<MigrationProjectTargetDataProviderDescriptor>> targetDataProviderDescriptors;
  final pulumi.Input<MigrationProjectTimeouts?>? timeouts;
  /// JSON string that specifies the transformation rules for the migration project. Homogeneous data migrations do not support transformation rules.
  final pulumi.Input<String?>? transformationRules;

  /// Creates a new [MigrationProjectArgs].
  /// [description] User-friendly description of the migration project.
  /// [instanceProfileArn] ARN of the instance profile associated with the migration project.
  /// [name] User-friendly name for the migration project.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [schemaConversionApplicationAttributes] Schema conversion application attributes, including the S3 bucket path and S3 role ARN. See `schemaConversionApplicationAttributes` Block below.
  /// [sourceDataProviderDescriptors] Information about the source data provider. See `sourceDataProviderDescriptor` Block below.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetDataProviderDescriptors] Information about the target data provider. See `targetDataProviderDescriptor` Block below.
  /// [timeouts] Optional.
  /// [transformationRules] JSON string that specifies the transformation rules for the migration project. Homogeneous data migrations do not support transformation rules.
  const MigrationProjectArgs({
    this.description,
    required this.instanceProfileArn,
    this.name,
    this.region,
    this.schemaConversionApplicationAttributes,
    required this.sourceDataProviderDescriptors,
    this.tags,
    required this.targetDataProviderDescriptors,
    this.timeouts,
    this.transformationRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'instanceProfileArn': instanceProfileArn,
      'name': ?name,
      'region': ?region,
      'schemaConversionApplicationAttributes': ?pulumi.Input.mapOptionalInputValue<MigrationProjectSchemaConversionApplicationAttributes, Map<String, dynamic>>(schemaConversionApplicationAttributes, (value) => value.toMap()),
      'sourceDataProviderDescriptors': pulumi.Input.mapInputValue<List<MigrationProjectSourceDataProviderDescriptor>, List<Map<String, dynamic>>>(sourceDataProviderDescriptors, (value) => pulumi.Input.encodeList<MigrationProjectSourceDataProviderDescriptor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'targetDataProviderDescriptors': pulumi.Input.mapInputValue<List<MigrationProjectTargetDataProviderDescriptor>, List<Map<String, dynamic>>>(targetDataProviderDescriptors, (value) => pulumi.Input.encodeList<MigrationProjectTargetDataProviderDescriptor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<MigrationProjectTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'transformationRules': ?transformationRules,
    };
  }

  factory MigrationProjectArgs.fromMap(Map<String, dynamic> map) {
    return MigrationProjectArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceProfileArn: pulumi.Input.fromValue(map['instanceProfileArn'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaConversionApplicationAttributes: (() { final guardedValue = map['schemaConversionApplicationAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MigrationProjectSchemaConversionApplicationAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceDataProviderDescriptors: pulumi.Input.fromValue(pulumi.Input.decodeList<MigrationProjectSourceDataProviderDescriptor>(map['sourceDataProviderDescriptors']!, (value) => MigrationProjectSourceDataProviderDescriptor.fromMap((value as Map).cast<String, dynamic>()))),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetDataProviderDescriptors: pulumi.Input.fromValue(pulumi.Input.decodeList<MigrationProjectTargetDataProviderDescriptor>(map['targetDataProviderDescriptors']!, (value) => MigrationProjectTargetDataProviderDescriptor.fromMap((value as Map).cast<String, dynamic>()))),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MigrationProjectTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      transformationRules: (() { final guardedValue = map['transformationRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
