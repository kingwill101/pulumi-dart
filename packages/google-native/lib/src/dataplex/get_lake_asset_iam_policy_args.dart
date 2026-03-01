// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_lake_asset_iam_policy_args_doc}
/// Arguments for getLakeAssetIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_lake_asset_iam_policy_args_doc}
class GetLakeAssetIamPolicyArgs {
  final pulumi.Input<String> assetId;
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetLakeAssetIamPolicyArgs].
  /// [assetId] Required.
  /// [lakeId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [zone] Required.
  GetLakeAssetIamPolicyArgs({
    required String assetId,
    required String lakeId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
    required String zone,
  }) : assetId = pulumi.Input.asInput<String>(assetId),
       lakeId = pulumi.Input.asInput<String>(lakeId),
       location = pulumi.Input.asInput<String>(location),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetId': assetId,
      'lakeId': lakeId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'zone': zone,
    };
  }

  factory GetLakeAssetIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetLakeAssetIamPolicyArgs(
      assetId: map['assetId'] as String,
      lakeId: map['lakeId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      zone: map['zone'] as String,
    );
  }
}
