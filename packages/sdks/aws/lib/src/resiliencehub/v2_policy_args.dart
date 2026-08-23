// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_availability_slo.dart';
import 'v2_policy_data_recovery.dart';
import 'v2_policy_multi_az.dart';
import 'v2_policy_multi_region.dart';

/// {@template pulumi_resiliencehub_v2_policy_v2_policy_args_doc}
/// The set of arguments for V2Policy.
/// {@endtemplate}
/// {@macro pulumi_resiliencehub_v2_policy_v2_policy_args_doc}
class V2PolicyArgs {
  /// Availability SLO configuration. See `availabilitySlo` Block below.
  final pulumi.Input<V2PolicyAvailabilitySlo>? availabilitySlo;
  /// Data recovery configuration. See `dataRecovery` Block below.
  final pulumi.Input<V2PolicyDataRecovery>? dataRecovery;
  /// Description of the policy.
  final pulumi.Input<String>? description;
  /// KMS key ARN.
  final pulumi.Input<String>? kmsKeyId;
  /// Multi-AZ disaster recovery configuration. See `multiAz` Block below.
  final pulumi.Input<V2PolicyMultiAz>? multiAz;
  /// Multi-region disaster recovery configuration. See `multiRegion` Block below.
  final pulumi.Input<V2PolicyMultiRegion>? multiRegion;
  /// Name of the policy. Changing this value requires creating a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [V2PolicyArgs].
  /// [availabilitySlo] Availability SLO configuration. See `availabilitySlo` Block below.
  /// [dataRecovery] Data recovery configuration. See `dataRecovery` Block below.
  /// [description] Description of the policy.
  /// [kmsKeyId] KMS key ARN.
  /// [multiAz] Multi-AZ disaster recovery configuration. See `multiAz` Block below.
  /// [multiRegion] Multi-region disaster recovery configuration. See `multiRegion` Block below.
  /// [name] Name of the policy. Changing this value requires creating a new resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const V2PolicyArgs({
    this.availabilitySlo,
    this.dataRecovery,
    this.description,
    this.kmsKeyId,
    this.multiAz,
    this.multiRegion,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilitySlo': ?pulumi.Input.mapOptionalInputValue<V2PolicyAvailabilitySlo, Map<String, dynamic>>(availabilitySlo, (value) => value.toMap()),
      'dataRecovery': ?pulumi.Input.mapOptionalInputValue<V2PolicyDataRecovery, Map<String, dynamic>>(dataRecovery, (value) => value.toMap()),
      'description': ?description,
      'kmsKeyId': ?kmsKeyId,
      'multiAz': ?pulumi.Input.mapOptionalInputValue<V2PolicyMultiAz, Map<String, dynamic>>(multiAz, (value) => value.toMap()),
      'multiRegion': ?pulumi.Input.mapOptionalInputValue<V2PolicyMultiRegion, Map<String, dynamic>>(multiRegion, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory V2PolicyArgs.fromMap(Map<String, dynamic> map) {
    return V2PolicyArgs(
      availabilitySlo: (() { final guardedValue = map['availabilitySlo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2PolicyAvailabilitySlo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataRecovery: (() { final guardedValue = map['dataRecovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2PolicyDataRecovery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiAz: (() { final guardedValue = map['multiAz']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2PolicyMultiAz.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      multiRegion: (() { final guardedValue = map['multiRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2PolicyMultiRegion.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
