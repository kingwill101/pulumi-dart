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
    pulumi.Output<String>? arn,
    pulumi.Output<List<RevisionAssetsAsset>>? assets,
    pulumi.Output<String>? comment,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? dataSetId,
    pulumi.Output<bool>? finalized,
    pulumi.Output<bool>? forceDestroy,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<RevisionAssetsTimeouts>? timeouts,
    pulumi.Output<String>? updatedAt,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      assets = pulumi.Input.asOptionalInput<List<RevisionAssetsAsset>>(assets),
      comment = pulumi.Input.asOptionalInput<String>(comment),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      dataSetId = pulumi.Input.asOptionalInput<String>(dataSetId),
      finalized = pulumi.Input.asOptionalInput<bool>(finalized),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<RevisionAssetsTimeouts>(timeouts),
      updatedAt = pulumi.Input.asOptionalInput<String>(updatedAt);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      assets: map['assets'] == null ? null : pulumi.Output.create<List<RevisionAssetsAsset>>(pulumi.Input.decodeList<RevisionAssetsAsset>(map['assets'], (value) => RevisionAssetsAsset.fromMap((value as Map).cast<String, dynamic>()))),
      comment: map['comment'] == null ? null : pulumi.Output.create<String>(map['comment'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      dataSetId: map['dataSetId'] == null ? null : pulumi.Output.create<String>(map['dataSetId'] as String),
      finalized: map['finalized'] == null ? null : pulumi.Output.create<bool>(map['finalized'] as bool),
      forceDestroy: map['forceDestroy'] == null ? null : pulumi.Output.create<bool>(map['forceDestroy'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<RevisionAssetsTimeouts>(RevisionAssetsTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      updatedAt: map['updatedAt'] == null ? null : pulumi.Output.create<String>(map['updatedAt'] as String),
    );
  }
}

