// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_project_schema_conversion_application_attributes.dart';
import 'migration_project_source_data_provider_descriptor.dart';
import 'migration_project_target_data_provider_descriptor.dart';
import 'migration_project_timeouts.dart';

/// Input properties used for looking up and filtering MigrationProject resources.
class MigrationProjectState {
  /// ARN of the migration project.
  final pulumi.Input<String?>? arn;
  /// Time the migration project was created, in RFC3339 format.
  final pulumi.Input<String?>? creationTime;
  /// User-friendly description of the migration project.
  final pulumi.Input<String?>? description;
  /// ARN of the instance profile associated with the migration project.
  final pulumi.Input<String?>? instanceProfileArn;
  /// Name of the associated instance profile.
  final pulumi.Input<String?>? instanceProfileName;
  /// User-friendly name for the migration project.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Schema conversion application attributes, including the S3 bucket path and S3 role ARN. See `schemaConversionApplicationAttributes` Block below.
  final pulumi.Input<MigrationProjectSchemaConversionApplicationAttributes?>? schemaConversionApplicationAttributes;
  /// Information about the source data provider. See `sourceDataProviderDescriptor` Block below.
  final pulumi.Input<List<MigrationProjectSourceDataProviderDescriptor>?>? sourceDataProviderDescriptors;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Information about the target data provider. See `targetDataProviderDescriptor` Block below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<MigrationProjectTargetDataProviderDescriptor>?>? targetDataProviderDescriptors;
  final pulumi.Input<MigrationProjectTimeouts?>? timeouts;
  /// JSON string that specifies the transformation rules for the migration project. Homogeneous data migrations do not support transformation rules.
  final pulumi.Input<String?>? transformationRules;

  /// Creates a new [MigrationProjectState].
  /// [arn] ARN of the migration project.
  /// [creationTime] Time the migration project was created, in RFC3339 format.
  /// [description] User-friendly description of the migration project.
  /// [instanceProfileArn] ARN of the instance profile associated with the migration project.
  /// [instanceProfileName] Name of the associated instance profile.
  /// [name] User-friendly name for the migration project.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [schemaConversionApplicationAttributes] Schema conversion application attributes, including the S3 bucket path and S3 role ARN. See `schemaConversionApplicationAttributes` Block below.
  /// [sourceDataProviderDescriptors] Information about the source data provider. See `sourceDataProviderDescriptor` Block below.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [targetDataProviderDescriptors] Information about the target data provider. See `targetDataProviderDescriptor` Block below.
  /// [timeouts] Optional.
  /// [transformationRules] JSON string that specifies the transformation rules for the migration project. Homogeneous data migrations do not support transformation rules.
  const MigrationProjectState({
    this.arn,
    this.creationTime,
    this.description,
    this.instanceProfileArn,
    this.instanceProfileName,
    this.name,
    this.region,
    this.schemaConversionApplicationAttributes,
    this.sourceDataProviderDescriptors,
    this.tags,
    this.tagsAll,
    this.targetDataProviderDescriptors,
    this.timeouts,
    this.transformationRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'creationTime': ?creationTime,
      'description': ?description,
      'instanceProfileArn': ?instanceProfileArn,
      'instanceProfileName': ?instanceProfileName,
      'name': ?name,
      'region': ?region,
      'schemaConversionApplicationAttributes': ?pulumi.Input.mapOptionalInputValue<MigrationProjectSchemaConversionApplicationAttributes, Map<String, dynamic>>(schemaConversionApplicationAttributes, (value) => value.toMap()),
      'sourceDataProviderDescriptors': ?pulumi.Input.mapOptionalInputValue<List<MigrationProjectSourceDataProviderDescriptor>, List<Map<String, dynamic>>>(sourceDataProviderDescriptors, (value) => pulumi.Input.encodeList<MigrationProjectSourceDataProviderDescriptor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targetDataProviderDescriptors': ?pulumi.Input.mapOptionalInputValue<List<MigrationProjectTargetDataProviderDescriptor>, List<Map<String, dynamic>>>(targetDataProviderDescriptors, (value) => pulumi.Input.encodeList<MigrationProjectTargetDataProviderDescriptor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<MigrationProjectTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'transformationRules': ?transformationRules,
    };
  }

  factory MigrationProjectState.fromMap(Map<String, dynamic> map) {
    return MigrationProjectState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceProfileArn: (() { final guardedValue = map['instanceProfileArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceProfileName: (() { final guardedValue = map['instanceProfileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaConversionApplicationAttributes: (() { final guardedValue = map['schemaConversionApplicationAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MigrationProjectSchemaConversionApplicationAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceDataProviderDescriptors: (() { final guardedValue = map['sourceDataProviderDescriptors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MigrationProjectSourceDataProviderDescriptor>(guardedValue, (value) => MigrationProjectSourceDataProviderDescriptor.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetDataProviderDescriptors: (() { final guardedValue = map['targetDataProviderDescriptors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MigrationProjectTargetDataProviderDescriptor>(guardedValue, (value) => MigrationProjectTargetDataProviderDescriptor.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MigrationProjectTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      transformationRules: (() { final guardedValue = map['transformationRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
