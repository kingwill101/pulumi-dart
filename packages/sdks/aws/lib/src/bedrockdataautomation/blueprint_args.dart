// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blueprint_encryption_configuration.dart';

/// {@template pulumi_bedrockdataautomation_blueprint_blueprint_args_doc}
/// The set of arguments for Blueprint.
/// {@endtemplate}
/// {@macro pulumi_bedrockdataautomation_blueprint_blueprint_args_doc}
class BlueprintArgs {
  /// Encryption settings for the blueprint. See `encryptionConfiguration` below.
  final pulumi.Input<BlueprintEncryptionConfiguration?>? encryptionConfiguration;
  /// Name of the blueprint. Changing this value forces a new resource.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// JSON schema of the blueprint, defining the fields to extract.
  final pulumi.Input<String> schema;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Modality of the blueprint. Valid values: `DOCUMENT`, `IMAGE`, `AUDIO`, `VIDEO`. Changing this value forces a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> type;

  /// Creates a new [BlueprintArgs].
  /// [encryptionConfiguration] Encryption settings for the blueprint. See `encryptionConfiguration` below.
  /// [name] Name of the blueprint. Changing this value forces a new resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [schema] JSON schema of the blueprint, defining the fields to extract.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] Modality of the blueprint. Valid values: `DOCUMENT`, `IMAGE`, `AUDIO`, `VIDEO`. Changing this value forces a new resource.
  const BlueprintArgs({
    this.encryptionConfiguration,
    this.name,
    this.region,
    required this.schema,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<BlueprintEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'schema': schema,
      'tags': ?tags,
      'type': type,
    };
  }

  factory BlueprintArgs.fromMap(Map<String, dynamic> map) {
    return BlueprintArgs(
      encryptionConfiguration: (() { final guardedValue = map['encryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BlueprintEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schema: pulumi.Input.fromValue(map['schema'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
