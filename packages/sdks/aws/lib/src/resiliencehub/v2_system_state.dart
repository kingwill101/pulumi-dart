// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering V2System resources.
class V2SystemState {
  /// ARN of the system.
  final pulumi.Input<String>? arn;
  /// Description of the system.
  final pulumi.Input<String>? description;
  /// KMS key ARN.
  final pulumi.Input<String>? kmsKeyId;
  /// Name of the system. Changing this value requires creating a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// AWS Organizations identifier for the system.
  final pulumi.Input<String>? organizationId;
  /// Organizational unit (OU) identifier for the system.
  final pulumi.Input<String>? ouId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Whether cross-account sharing is enabled for this system.
  final pulumi.Input<bool>? sharingEnabled;
  /// System ID for cross-account use without exposing account structure.
  final pulumi.Input<String>? systemId;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [V2SystemState].
  /// [arn] ARN of the system.
  /// [description] Description of the system.
  /// [kmsKeyId] KMS key ARN.
  /// [name] Name of the system. Changing this value requires creating a new resource.
  /// [organizationId] AWS Organizations identifier for the system.
  /// [ouId] Organizational unit (OU) identifier for the system.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sharingEnabled] Whether cross-account sharing is enabled for this system.
  /// [systemId] System ID for cross-account use without exposing account structure.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const V2SystemState({
    this.arn,
    this.description,
    this.kmsKeyId,
    this.name,
    this.organizationId,
    this.ouId,
    this.region,
    this.sharingEnabled,
    this.systemId,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'organizationId': ?organizationId,
      'ouId': ?ouId,
      'region': ?region,
      'sharingEnabled': ?sharingEnabled,
      'systemId': ?systemId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory V2SystemState.fromMap(Map<String, dynamic> map) {
    return V2SystemState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationId: (() { final guardedValue = map['organizationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ouId: (() { final guardedValue = map['ouId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharingEnabled: (() { final guardedValue = map['sharingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      systemId: (() { final guardedValue = map['systemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
