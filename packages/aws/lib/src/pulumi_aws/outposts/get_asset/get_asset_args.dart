// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAsset.
class GetAssetArgs {
  /// Outpost ARN.
  final Input<String> arn;

  /// ID of the asset.
  final Input<String> assetId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

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
      arn: Input.asInput<String>(map['arn']),
      assetId: Input.asInput<String>(map['assetId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
