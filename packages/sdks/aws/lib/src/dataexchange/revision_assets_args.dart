// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'revision_assets_asset.dart';
import 'revision_assets_timeouts.dart';

/// {@template pulumi_dataexchange_revision_assets_revision_assets_args_doc}
/// The set of arguments for RevisionAssets.
/// {@endtemplate}
/// {@macro pulumi_dataexchange_revision_assets_revision_assets_args_doc}
class RevisionAssetsArgs {
  /// A block to define the asset associated with the revision. See Asset for more details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<RevisionAssetsAsset>>? assets;
  /// A comment for the revision. Maximum length is 16,348 characters.
  final pulumi.Input<String>? comment;
  /// Unique identifier for the data set associated with the revision.
  final pulumi.Input<String> dataSetId;
  final pulumi.Input<bool>? finalized;
  final pulumi.Input<bool>? forceDestroy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<RevisionAssetsTimeouts>? timeouts;

  /// Creates a new [RevisionAssetsArgs].
  /// [assets] A block to define the asset associated with the revision. See Asset for more details.
  /// [comment] A comment for the revision. Maximum length is 16,348 characters.
  /// [dataSetId] Unique identifier for the data set associated with the revision.
  /// [finalized] Optional.
  /// [forceDestroy] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
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
    return <String, dynamic>{
      'assets': ?pulumi.Input.mapOptionalInputValue<List<RevisionAssetsAsset>, List<Map<String, dynamic>>>(assets, (value) => pulumi.Input.encodeList<RevisionAssetsAsset, Map<String, dynamic>>(value, (value) => value.toMap())),
      'comment': ?comment,
      'dataSetId': dataSetId,
      'finalized': ?finalized,
      'forceDestroy': ?forceDestroy,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<RevisionAssetsTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory RevisionAssetsArgs.fromMap(Map<String, dynamic> map) {
    return RevisionAssetsArgs(
      assets: map['assets'] == null ? null : ((pulumi.Input.decodeList<RevisionAssetsAsset>(map['assets']!, (value) => RevisionAssetsAsset.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      comment: map['comment'] == null ? null : ((map['comment'] as String).input()).input(),
      dataSetId: (map['dataSetId'] as String).input(),
      finalized: map['finalized'] == null ? null : ((map['finalized'] as bool).input()).input(),
      forceDestroy: map['forceDestroy'] == null ? null : ((map['forceDestroy'] as bool).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((RevisionAssetsTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

