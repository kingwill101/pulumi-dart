// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../revision_assets_asset/revision_assets_asset.dart';
import '../revision_assets_timeouts/revision_assets_timeouts.dart';

/// The set of arguments for RevisionAssets.
class RevisionAssetsArgs {
  /// A block to define the asset associated with the revision. See Asset for more details.
  ///
  /// The following arguments are optional:
  final Input<List<RevisionAssetsAsset>>? assets;

  /// A comment for the revision. Maximum length is 16,348 characters.
  final Input<String>? comment;

  /// Unique identifier for the data set associated with the revision.
  final Input<String> dataSetId;
  final Input<bool>? finalized;
  final Input<bool>? forceDestroy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<RevisionAssetsTimeouts>? timeouts;

  RevisionAssetsArgs({
    this.assets,
    this.comment,
    required this.dataSetId,
    this.finalized,
    this.forceDestroy,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final assetsValue = assets;
    if (assetsValue != null) {
      map['assets'] = Input.mapOptionalInputValue<List<RevisionAssetsAsset>,
              List<Map<String, dynamic>>>(
          assetsValue,
          (value) =>
              Input.encodeList<RevisionAssetsAsset, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final commentValue = comment;
    if (commentValue != null) {
      map['comment'] = commentValue;
    }
    map['dataSetId'] = dataSetId;
    final finalizedValue = finalized;
    if (finalizedValue != null) {
      map['finalized'] = finalizedValue;
    }
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<RevisionAssetsTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory RevisionAssetsArgs.fromMap(Map<String, dynamic> map) {
    return RevisionAssetsArgs(
      assets: Input.asOptionalInput<List<RevisionAssetsAsset>>(map['assets']),
      comment: Input.asOptionalInput<String>(map['comment']),
      dataSetId: Input.asInput<String>(map['dataSetId']),
      finalized: Input.asOptionalInput<bool>(map['finalized']),
      forceDestroy: Input.asOptionalInput<bool>(map['forceDestroy']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<RevisionAssetsTimeouts>(map['timeouts']),
    );
  }
}
