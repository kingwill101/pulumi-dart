// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAsset.
class GetAssetArgs {
  /// Outpost ARN.
  final pulumi.Input<String> arn;

  /// ID of the asset.
  final pulumi.Input<String> assetId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetAssetArgs({
    required this.arn,
    required this.assetId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['assetId'] = assetId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetAssetArgs.fromMap(Map<String, dynamic> map) {
    return GetAssetArgs(
      arn: pulumi.Input.asInput<String>(map['arn']),
      assetId: pulumi.Input.asInput<String>(map['assetId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
