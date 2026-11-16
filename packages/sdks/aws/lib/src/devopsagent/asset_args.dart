// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'asset_content.dart';

/// {@template pulumi_devopsagent_asset_asset_args_doc}
/// The set of arguments for Asset.
/// {@endtemplate}
/// {@macro pulumi_devopsagent_asset_asset_args_doc}
class AssetArgs {
  /// Identifier of the Agent Space containing the asset. Changing this value requires replacement.
  final pulumi.Input<String> agentSpaceId;
  /// Type of asset. Changing this value requires replacement. See [Managing assets](https://docs.aws.amazon.com/devopsagent/latest/userguide/about-aws-devops-agent-managing-assets.html) for supported types and their metadata requirements.
  final pulumi.Input<String> assetType;
  /// Content to upload. Exactly one block is required. See `content` Block below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<AssetContent> content;
  /// JSON document describing the asset. Required metadata fields depend on `assetType`. Updates replace supplied top-level fields and retain omitted fields in AWS; removing a field from this document does not delete it from AWS. Changes to metadata alone do not re-upload content.
  final pulumi.Input<String?>? metadata;
  /// Region where this resource will be managed. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [AssetArgs].
  /// [agentSpaceId] Identifier of the Agent Space containing the asset. Changing this value requires replacement.
  /// [assetType] Type of asset. Changing this value requires replacement. See [Managing assets](https://docs.aws.amazon.com/devopsagent/latest/userguide/about-aws-devops-agent-managing-assets.html) for supported types and their metadata requirements.
  /// [content] Content to upload. Exactly one block is required. See `content` Block below.
  /// [metadata] JSON document describing the asset. Required metadata fields depend on `assetType`. Updates replace supplied top-level fields and retain omitted fields in AWS; removing a field from this document does not delete it from AWS. Changes to metadata alone do not re-upload content.
  /// [region] Region where this resource will be managed. Defaults to the Region set in the provider configuration.
  const AssetArgs({
    required this.agentSpaceId,
    required this.assetType,
    required this.content,
    this.metadata,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentSpaceId': agentSpaceId,
      'assetType': assetType,
      'content': pulumi.Input.mapInputValue<AssetContent, Map<String, dynamic>>(content, (value) => value.toMap()),
      'metadata': ?metadata,
      'region': ?region,
    };
  }

  factory AssetArgs.fromMap(Map<String, dynamic> map) {
    return AssetArgs(
      agentSpaceId: pulumi.Input.fromValue(map['agentSpaceId'] as String),
      assetType: pulumi.Input.fromValue(map['assetType'] as String),
      content: pulumi.Input.fromValue(AssetContent.fromMap((map['content']! as Map).cast<String, dynamic>())),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
