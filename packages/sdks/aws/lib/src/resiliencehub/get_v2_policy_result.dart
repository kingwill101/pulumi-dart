// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_v2_policy_availability_slo.dart';
import 'get_v2_policy_data_recovery.dart';
import 'get_v2_policy_multi_az.dart';
import 'get_v2_policy_multi_region.dart';

/// Result data returned by getV2Policy.
class GetV2PolicyResult {
  final String arn;
  /// Availability SLO configuration. See `availabilitySlo` Block below.
  final List<GetV2PolicyAvailabilitySlo> availabilitySlos;
  /// Data recovery configuration. See `dataRecovery` Block below.
  final List<GetV2PolicyDataRecovery> dataRecoveries;
  /// Description of the policy.
  final String description;
  /// KMS key ARN.
  final String kmsKeyId;
  /// Multi-AZ disaster recovery configuration. See `multiAz` Block below.
  final List<GetV2PolicyMultiAz> multiAzs;
  /// Multi-region disaster recovery configuration. See `multiRegion` Block below.
  final List<GetV2PolicyMultiRegion> multiRegions;
  /// Name of the policy.
  final String name;
  final String region;
  /// Map of tags assigned to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetV2PolicyResult].
  /// [arn] Required.
  /// [availabilitySlos] Availability SLO configuration. See `availabilitySlo` Block below.
  /// [dataRecoveries] Data recovery configuration. See `dataRecovery` Block below.
  /// [description] Description of the policy.
  /// [kmsKeyId] KMS key ARN.
  /// [multiAzs] Multi-AZ disaster recovery configuration. See `multiAz` Block below.
  /// [multiRegions] Multi-region disaster recovery configuration. See `multiRegion` Block below.
  /// [name] Name of the policy.
  /// [region] Required.
  /// [tags] Map of tags assigned to the resource.
  const GetV2PolicyResult({
    required this.arn,
    required this.availabilitySlos,
    required this.dataRecoveries,
    required this.description,
    required this.kmsKeyId,
    required this.multiAzs,
    required this.multiRegions,
    required this.name,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'availabilitySlos': pulumi.Input.encodeList<GetV2PolicyAvailabilitySlo, Map<String, dynamic>>(availabilitySlos, (value) => value.toMap()),
      'dataRecoveries': pulumi.Input.encodeList<GetV2PolicyDataRecovery, Map<String, dynamic>>(dataRecoveries, (value) => value.toMap()),
      'description': description,
      'kmsKeyId': kmsKeyId,
      'multiAzs': pulumi.Input.encodeList<GetV2PolicyMultiAz, Map<String, dynamic>>(multiAzs, (value) => value.toMap()),
      'multiRegions': pulumi.Input.encodeList<GetV2PolicyMultiRegion, Map<String, dynamic>>(multiRegions, (value) => value.toMap()),
      'name': name,
      'region': region,
      'tags': tags,
    };
  }

  factory GetV2PolicyResult.fromMap(Map<String, dynamic> map) {
    return GetV2PolicyResult(
      arn: map['arn'] as String,
      availabilitySlos: pulumi.Input.decodeList<GetV2PolicyAvailabilitySlo>(map['availabilitySlos']!, (value) => GetV2PolicyAvailabilitySlo.fromMap((value as Map).cast<String, dynamic>())),
      dataRecoveries: pulumi.Input.decodeList<GetV2PolicyDataRecovery>(map['dataRecoveries']!, (value) => GetV2PolicyDataRecovery.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      kmsKeyId: map['kmsKeyId'] as String,
      multiAzs: pulumi.Input.decodeList<GetV2PolicyMultiAz>(map['multiAzs']!, (value) => GetV2PolicyMultiAz.fromMap((value as Map).cast<String, dynamic>())),
      multiRegions: pulumi.Input.decodeList<GetV2PolicyMultiRegion>(map['multiRegions']!, (value) => GetV2PolicyMultiRegion.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
