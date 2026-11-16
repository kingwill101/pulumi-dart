// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blueprint_encryption_configuration.dart';

/// Input properties used for looking up and filtering Blueprint resources.
class BlueprintState {
  /// ARN of the blueprint.
  final pulumi.Input<String?>? arn;
  /// Stage of the blueprint.
  final pulumi.Input<String?>? blueprintStage;
  /// Time the blueprint was created, in RFC3339 format.
  final pulumi.Input<String?>? creationTime;
  /// Encryption settings for the blueprint. See `encryptionConfiguration` below.
  final pulumi.Input<BlueprintEncryptionConfiguration?>? encryptionConfiguration;
  /// Time the blueprint was last modified, in RFC3339 format.
  final pulumi.Input<String?>? lastModifiedTime;
  /// Name of the blueprint. Changing this value forces a new resource.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// JSON schema of the blueprint, defining the fields to extract.
  final pulumi.Input<String?>? schema;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Modality of the blueprint. Valid values: `DOCUMENT`, `IMAGE`, `AUDIO`, `VIDEO`. Changing this value forces a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? type;

  /// Creates a new [BlueprintState].
  /// [arn] ARN of the blueprint.
  /// [blueprintStage] Stage of the blueprint.
  /// [creationTime] Time the blueprint was created, in RFC3339 format.
  /// [encryptionConfiguration] Encryption settings for the blueprint. See `encryptionConfiguration` below.
  /// [lastModifiedTime] Time the blueprint was last modified, in RFC3339 format.
  /// [name] Name of the blueprint. Changing this value forces a new resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [schema] JSON schema of the blueprint, defining the fields to extract.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [type] Modality of the blueprint. Valid values: `DOCUMENT`, `IMAGE`, `AUDIO`, `VIDEO`. Changing this value forces a new resource.
  const BlueprintState({
    this.arn,
    this.blueprintStage,
    this.creationTime,
    this.encryptionConfiguration,
    this.lastModifiedTime,
    this.name,
    this.region,
    this.schema,
    this.tags,
    this.tagsAll,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'blueprintStage': ?blueprintStage,
      'creationTime': ?creationTime,
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<BlueprintEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'lastModifiedTime': ?lastModifiedTime,
      'name': ?name,
      'region': ?region,
      'schema': ?schema,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
    };
  }

  factory BlueprintState.fromMap(Map<String, dynamic> map) {
    return BlueprintState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      blueprintStage: (() { final guardedValue = map['blueprintStage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionConfiguration: (() { final guardedValue = map['encryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BlueprintEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
