// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_v2_policy_availability_slo.dart';
import 'get_v2_policy_data_recovery.dart';
import 'get_v2_policy_multi_az.dart';
import 'get_v2_policy_multi_region.dart';

/// Result data returned by getV2Policy.
class GetV2PolicyResult {
  final String? arn;
  /// Availability SLO configuration. See `availabilitySlo` Block below.
  final List<GetV2PolicyAvailabilitySlo>? availabilitySlos;
  /// Data recovery configuration. See `dataRecovery` Block below.
  final List<GetV2PolicyDataRecovery>? dataRecoveries;
  /// Description of the policy.
  final String? description;
  /// KMS key ARN.
  final String? kmsKeyId;
  /// Multi-AZ disaster recovery configuration. See `multiAz` Block below.
  final List<GetV2PolicyMultiAz>? multiAzs;
  /// Multi-region disaster recovery configuration. See `multiRegion` Block below.
  final List<GetV2PolicyMultiRegion>? multiRegions;
  /// Name of the policy.
  final String? name;
  final String? region;
  /// Map of tags assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetV2PolicyResult].
  /// [arn] Optional.
  /// [availabilitySlos] Availability SLO configuration. See `availabilitySlo` Block below.
  /// [dataRecoveries] Data recovery configuration. See `dataRecovery` Block below.
  /// [description] Description of the policy.
  /// [kmsKeyId] KMS key ARN.
  /// [multiAzs] Multi-AZ disaster recovery configuration. See `multiAz` Block below.
  /// [multiRegions] Multi-region disaster recovery configuration. See `multiRegion` Block below.
  /// [name] Name of the policy.
  /// [region] Optional.
  /// [tags] Map of tags assigned to the resource.
  const GetV2PolicyResult({
    this.arn,
    this.availabilitySlos,
    this.dataRecoveries,
    this.description,
    this.kmsKeyId,
    this.multiAzs,
    this.multiRegions,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'availabilitySlos': ?(() { final guardedValue = availabilitySlos; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetV2PolicyAvailabilitySlo, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dataRecoveries': ?(() { final guardedValue = dataRecoveries; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetV2PolicyDataRecovery, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'description': ?description,
      'kmsKeyId': ?kmsKeyId,
      'multiAzs': ?(() { final guardedValue = multiAzs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetV2PolicyMultiAz, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'multiRegions': ?(() { final guardedValue = multiRegions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetV2PolicyMultiRegion, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetV2PolicyResult.fromMap(Map<String, dynamic> map) {
    return GetV2PolicyResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilitySlos: (() { final guardedValue = map['availabilitySlos']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetV2PolicyAvailabilitySlo>(guardedValue, (value) => GetV2PolicyAvailabilitySlo.fromMap((value as Map).cast<String, dynamic>())); })(),
      dataRecoveries: (() { final guardedValue = map['dataRecoveries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetV2PolicyDataRecovery>(guardedValue, (value) => GetV2PolicyDataRecovery.fromMap((value as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      multiAzs: (() { final guardedValue = map['multiAzs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetV2PolicyMultiAz>(guardedValue, (value) => GetV2PolicyMultiAz.fromMap((value as Map).cast<String, dynamic>())); })(),
      multiRegions: (() { final guardedValue = map['multiRegions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetV2PolicyMultiRegion>(guardedValue, (value) => GetV2PolicyMultiRegion.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
