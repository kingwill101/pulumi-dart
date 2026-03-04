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
      'assets':
          ?pulumi.Input.mapOptionalInputValue<
            List<RevisionAssetsAsset>,
            List<Map<String, dynamic>>
          >(
            assets,
            (value) =>
                pulumi.Input.encodeList<
                  RevisionAssetsAsset,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'comment': ?comment,
      'createdAt': ?createdAt,
      'dataSetId': ?dataSetId,
      'finalized': ?finalized,
      'forceDestroy': ?forceDestroy,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            RevisionAssetsTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'updatedAt': ?updatedAt,
    };
  }

  factory RevisionAssetsState.fromMap(Map<String, dynamic> map) {
    return RevisionAssetsState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      assets: (() {
        final guardedValue = map['assets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RevisionAssetsAsset>(
            guardedValue,
            (value) => RevisionAssetsAsset.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      comment: (() {
        final guardedValue = map['comment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createdAt: (() {
        final guardedValue = map['createdAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataSetId: (() {
        final guardedValue = map['dataSetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      finalized: (() {
        final guardedValue = map['finalized'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      forceDestroy: (() {
        final guardedValue = map['forceDestroy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RevisionAssetsTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      updatedAt: (() {
        final guardedValue = map['updatedAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
