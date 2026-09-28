// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dms_instance_profile_instance_profile_args_doc}
/// The set of arguments for InstanceProfile.
/// {@endtemplate}
/// {@macro pulumi_dms_instance_profile_instance_profile_args_doc}
class InstanceProfileArgs {
  /// Availability Zone where the instance profile runs. Default is a random, system-chosen Availability Zone.
  final pulumi.Input<String?>? availabilityZone;
  /// Description for the instance profile.
  final pulumi.Input<String?>? description;
  /// ARN of the KMS key used to encrypt the connection parameters for the instance profile. If you don't specify a value, DMS uses your default encryption key.
  final pulumi.Input<String?>? kmsKeyArn;
  /// Name for the instance profile. If omitted, DMS assigns a generated name.
  final pulumi.Input<String?>? name;
  /// Network type for the instance profile. Valid values are `IPV4`, `IPV6`, and `DUAL`.
  final pulumi.Input<String?>? networkType;
  /// Whether the instance profile is publicly accessible. Default is `true`.
  final pulumi.Input<bool?>? publiclyAccessible;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Subnet group to associate with the instance profile.
  final pulumi.Input<String?>? subnetGroupIdentifier;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// VPC security group IDs to be used with the instance profile. The VPC security groups must work with the VPC containing the instance profile.
  final pulumi.Input<List<String>?>? vpcSecurityGroupIds;

  /// Creates a new [InstanceProfileArgs].
  /// [availabilityZone] Availability Zone where the instance profile runs. Default is a random, system-chosen Availability Zone.
  /// [description] Description for the instance profile.
  /// [kmsKeyArn] ARN of the KMS key used to encrypt the connection parameters for the instance profile. If you don't specify a value, DMS uses your default encryption key.
  /// [name] Name for the instance profile. If omitted, DMS assigns a generated name.
  /// [networkType] Network type for the instance profile. Valid values are `IPV4`, `IPV6`, and `DUAL`.
  /// [publiclyAccessible] Whether the instance profile is publicly accessible. Default is `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetGroupIdentifier] Subnet group to associate with the instance profile.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcSecurityGroupIds] VPC security group IDs to be used with the instance profile. The VPC security groups must work with the VPC containing the instance profile.
  const InstanceProfileArgs({
    this.availabilityZone,
    this.description,
    this.kmsKeyArn,
    this.name,
    this.networkType,
    this.publiclyAccessible,
    this.region,
    this.subnetGroupIdentifier,
    this.tags,
    this.vpcSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'description': ?description,
      'kmsKeyArn': ?kmsKeyArn,
      'name': ?name,
      'networkType': ?networkType,
      'publiclyAccessible': ?publiclyAccessible,
      'region': ?region,
      'subnetGroupIdentifier': ?subnetGroupIdentifier,
      'tags': ?tags,
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
    };
  }

  factory InstanceProfileArgs.fromMap(Map<String, dynamic> map) {
    return InstanceProfileArgs(
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publiclyAccessible: (() { final guardedValue = map['publiclyAccessible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetGroupIdentifier: (() { final guardedValue = map['subnetGroupIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcSecurityGroupIds: (() { final guardedValue = map['vpcSecurityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
