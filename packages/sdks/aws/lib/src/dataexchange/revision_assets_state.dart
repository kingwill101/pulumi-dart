// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'revision_assets_asset.dart';
import 'revision_assets_timeouts.dart';

/// Input properties used for looking up and filtering RevisionAssets resources.
class RevisionAssetsState {
  /// The ARN of the Data Exchange Revision Assets.
  final pulumi.Input<String>? arn;
  /// A block to define the asset associated with the revision. See Asset for more details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<RevisionAssetsAsset>>? assets;
  /// A comment for the revision. Maximum length is 16,348 characters.
  final pulumi.Input<String>? comment;
  /// The timestamp when the revision was created, in RFC3339 format.
  final pulumi.Input<String>? createdAt;
  /// Unique identifier for the data set associated with the revision.
  final pulumi.Input<String>? dataSetId;
  final pulumi.Input<bool>? finalized;
  final pulumi.Input<bool>? forceDestroy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<RevisionAssetsTimeouts>? timeouts;
  /// The timestamp when the revision was last updated, in RFC3339 format.
  final pulumi.Input<String>? updatedAt;

  /// Creates a new [RevisionAssetsState].
  /// [arn] The ARN of the Data Exchange Revision Assets.
  /// [assets] A block to define the asset associated with the revision. See Asset for more details.
  /// [comment] A comment for the revision. Maximum length is 16,348 characters.
  /// [createdAt] The timestamp when the revision was created, in RFC3339 format.
  /// [dataSetId] Unique identifier for the data set associated with the revision.
  /// [finalized] Optional.
  /// [forceDestroy] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  /// [updatedAt] The timestamp when the revision was last updated, in RFC3339 format.
  RevisionAssetsState({
    this.arn,
    this.assets,
    this.comment,
    this.createdAt,
    this.dataSetId,
    this.finalized,
    this.forceDestroy,
    this.region,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'assets': ?pulumi.Input.mapOptionalInputValue<List<RevisionAssetsAsset>, List<Map<String, dynamic>>>(assets, (value) => pulumi.Input.encodeList<RevisionAssetsAsset, Map<String, dynamic>>(value, (value) => value.toMap())),
      'comment': ?comment,
      'createdAt': ?createdAt,
      'dataSetId': ?dataSetId,
      'finalized': ?finalized,
      'forceDestroy': ?forceDestroy,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<RevisionAssetsTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'updatedAt': ?updatedAt,
    };
  }

  factory RevisionAssetsState.fromMap(Map<String, dynamic> map) {
    return RevisionAssetsState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      assets: map['assets'] == null ? null : (pulumi.Input.decodeList<RevisionAssetsAsset>(map['assets'], (value) => RevisionAssetsAsset.fromMap((value as Map).cast<String, dynamic>()))).input(),
      comment: map['comment'] == null ? null : (map['comment'] as String).input(),
      createdAt: map['createdAt'] == null ? null : (map['createdAt'] as String).input(),
      dataSetId: map['dataSetId'] == null ? null : (map['dataSetId'] as String).input(),
      finalized: map['finalized'] == null ? null : (map['finalized'] as bool).input(),
      forceDestroy: map['forceDestroy'] == null ? null : (map['forceDestroy'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      timeouts: map['timeouts'] == null ? null : (RevisionAssetsTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
      updatedAt: map['updatedAt'] == null ? null : (map['updatedAt'] as String).input(),
    );
  }
}

