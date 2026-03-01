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
    pulumi.Output<List<RevisionAssetsAsset>>? assets,
    pulumi.Output<String>? comment,
    required pulumi.Output<String> dataSetId,
    pulumi.Output<bool>? finalized,
    pulumi.Output<bool>? forceDestroy,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<RevisionAssetsTimeouts>? timeouts,
  }) :
      assets = pulumi.Input.asOptionalInput<List<RevisionAssetsAsset>>(assets),
      comment = pulumi.Input.asOptionalInput<String>(comment),
      dataSetId = pulumi.Input.asInput<String>(dataSetId),
      finalized = pulumi.Input.asOptionalInput<bool>(finalized),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<RevisionAssetsTimeouts>(timeouts);

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
      assets: map['assets'] == null ? null : pulumi.Output.create<List<RevisionAssetsAsset>>(pulumi.Input.decodeList<RevisionAssetsAsset>(map['assets'], (value) => RevisionAssetsAsset.fromMap((value as Map).cast<String, dynamic>()))),
      comment: map['comment'] == null ? null : pulumi.Output.create<String>(map['comment'] as String),
      dataSetId: pulumi.Output.create<String>(map['dataSetId'] as String),
      finalized: map['finalized'] == null ? null : pulumi.Output.create<bool>(map['finalized'] as bool),
      forceDestroy: map['forceDestroy'] == null ? null : pulumi.Output.create<bool>(map['forceDestroy'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<RevisionAssetsTimeouts>(RevisionAssetsTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

