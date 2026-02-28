// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_outposts_get_asset_get_asset_args_doc}
/// Arguments for getAsset.
/// {@endtemplate}
/// {@macro pulumi_outposts_get_asset_get_asset_args_doc}
class GetAssetArgs {
  /// Outpost ARN.
  final pulumi.Input<String> arn;
  /// ID of the asset.
  final pulumi.Input<String> assetId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetAssetArgs].
  /// [arn] Outpost ARN.
  /// [assetId] ID of the asset.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetAssetArgs({
    required String arn,
    required String assetId,
    String? region,
  }) :
      arn = pulumi.Input.asInput<String>(arn),
      assetId = pulumi.Input.asInput<String>(assetId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'assetId': assetId,
      'region': ?region,
    };
  }

  factory GetAssetArgs.fromMap(Map<String, dynamic> map) {
    return GetAssetArgs(
      arn: map['arn'] as String,
      assetId: map['assetId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

