// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'asset_content.dart';

/// Input properties used for looking up and filtering Asset resources.
class AssetState {
  /// Identifier of the Agent Space containing the asset. Changing this value requires replacement.
  final pulumi.Input<String?>? agentSpaceId;
  /// Identifier of the asset.
  final pulumi.Input<String?>? assetId;
  /// Type of asset. Changing this value requires replacement. See [Managing assets](https://docs.aws.amazon.com/devopsagent/latest/userguide/about-aws-devops-agent-managing-assets.html) for supported types and their metadata requirements.
  final pulumi.Input<String?>? assetType;
  /// Content to upload. Exactly one block is required. See `content` Block below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<AssetContent?>? content;
  /// Creation timestamp in RFC 3339 format.
  final pulumi.Input<String?>? createdAt;
  /// JSON document describing the asset. Required metadata fields depend on `assetType`. Updates replace supplied top-level fields and retain omitted fields in AWS; removing a field from this document does not delete it from AWS. Changes to metadata alone do not re-upload content.
  final pulumi.Input<String?>? metadata;
  /// Full JSON metadata returned by AWS, including retained fields and service-provided defaults.
  final pulumi.Input<String?>? metadataActual;
  /// Region where this resource will be managed. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Last update timestamp in RFC 3339 format.
  final pulumi.Input<String?>? updatedAt;
  /// Current asset version.
  final pulumi.Input<int?>? version;

  /// Creates a new [AssetState].
  /// [agentSpaceId] Identifier of the Agent Space containing the asset. Changing this value requires replacement.
  /// [assetId] Identifier of the asset.
  /// [assetType] Type of asset. Changing this value requires replacement. See [Managing assets](https://docs.aws.amazon.com/devopsagent/latest/userguide/about-aws-devops-agent-managing-assets.html) for supported types and their metadata requirements.
  /// [content] Content to upload. Exactly one block is required. See `content` Block below.
  /// [createdAt] Creation timestamp in RFC 3339 format.
  /// [metadata] JSON document describing the asset. Required metadata fields depend on `assetType`. Updates replace supplied top-level fields and retain omitted fields in AWS; removing a field from this document does not delete it from AWS. Changes to metadata alone do not re-upload content.
  /// [metadataActual] Full JSON metadata returned by AWS, including retained fields and service-provided defaults.
  /// [region] Region where this resource will be managed. Defaults to the Region set in the provider configuration.
  /// [updatedAt] Last update timestamp in RFC 3339 format.
  /// [version] Current asset version.
  const AssetState({
    this.agentSpaceId,
    this.assetId,
    this.assetType,
    this.content,
    this.createdAt,
    this.metadata,
    this.metadataActual,
    this.region,
    this.updatedAt,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentSpaceId': ?agentSpaceId,
      'assetId': ?assetId,
      'assetType': ?assetType,
      'content': ?pulumi.Input.mapOptionalInputValue<AssetContent, Map<String, dynamic>>(content, (value) => value.toMap()),
      'createdAt': ?createdAt,
      'metadata': ?metadata,
      'metadataActual': ?metadataActual,
      'region': ?region,
      'updatedAt': ?updatedAt,
      'version': ?version,
    };
  }

  factory AssetState.fromMap(Map<String, dynamic> map) {
    return AssetState(
      agentSpaceId: (() { final guardedValue = map['agentSpaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      assetId: (() { final guardedValue = map['assetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      assetType: (() { final guardedValue = map['assetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssetContent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadataActual: (() { final guardedValue = map['metadataActual']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
