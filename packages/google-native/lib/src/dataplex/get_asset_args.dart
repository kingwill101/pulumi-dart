// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_asset_args_doc}
/// Arguments for getAsset.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_asset_args_doc}
class GetAssetArgs {
  final pulumi.Input<String> assetId;
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetAssetArgs].
  /// [assetId] Required.
  /// [lakeId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [zone] Required.
  GetAssetArgs({
    required String assetId,
    required String lakeId,
    required String location,
    String? project,
    required String zone,
  }) : assetId = pulumi.Input.asInput<String>(assetId),
       lakeId = pulumi.Input.asInput<String>(lakeId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetId': assetId,
      'lakeId': lakeId,
      'location': location,
      'project': ?project,
      'zone': zone,
    };
  }

  factory GetAssetArgs.fromMap(Map<String, dynamic> map) {
    return GetAssetArgs(
      assetId: map['assetId'] as String,
      lakeId: map['lakeId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      zone: map['zone'] as String,
    );
  }
}
