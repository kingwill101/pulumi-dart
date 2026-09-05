// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resiliencehub_v2_system_v2_system_args_doc}
/// The set of arguments for V2System.
/// {@endtemplate}
/// {@macro pulumi_resiliencehub_v2_system_v2_system_args_doc}
class V2SystemArgs {
  /// Description of the system.
  final pulumi.Input<String?>? description;
  /// KMS key ARN.
  final pulumi.Input<String?>? kmsKeyId;
  /// Name of the system. Changing this value requires creating a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Whether cross-account sharing is enabled for this system.
  final pulumi.Input<bool?>? sharingEnabled;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [V2SystemArgs].
  /// [description] Description of the system.
  /// [kmsKeyId] KMS key ARN.
  /// [name] Name of the system. Changing this value requires creating a new resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sharingEnabled] Whether cross-account sharing is enabled for this system.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const V2SystemArgs({
    this.description,
    this.kmsKeyId,
    this.name,
    this.region,
    this.sharingEnabled,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'region': ?region,
      'sharingEnabled': ?sharingEnabled,
      'tags': ?tags,
    };
  }

  factory V2SystemArgs.fromMap(Map<String, dynamic> map) {
    return V2SystemArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharingEnabled: (() { final guardedValue = map['sharingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
