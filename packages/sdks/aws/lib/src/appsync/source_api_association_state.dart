// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_api_association_source_api_association_config.dart';
import 'source_api_association_timeouts.dart';

/// Input properties used for looking up and filtering SourceApiAssociation resources.
class SourceApiAssociationState {
  /// ARN of the Source API Association.
  final pulumi.Input<String>? arn;
  /// ID of the Source API Association.
  final pulumi.Input<String>? associationId;
  /// Description of the source API being merged.
  final pulumi.Input<String>? description;
  /// ARN of the merged API. One of `merged_api_arn` or `merged_api_id` must be specified.
  final pulumi.Input<String>? mergedApiArn;
  /// ID of the merged API. One of `merged_api_arn` or `merged_api_id` must be specified.
  final pulumi.Input<String>? mergedApiId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the source API. One of `source_api_arn` or `source_api_id` must be specified.
  final pulumi.Input<String>? sourceApiArn;
  final pulumi.Input<List<SourceApiAssociationSourceApiAssociationConfig>>? sourceApiAssociationConfigs;
  /// ID of the source API. One of `source_api_arn` or `source_api_id` must be specified.
  final pulumi.Input<String>? sourceApiId;
  final pulumi.Input<SourceApiAssociationTimeouts>? timeouts;

  /// Creates a new [SourceApiAssociationState].
  /// [arn] ARN of the Source API Association.
  /// [associationId] ID of the Source API Association.
  /// [description] Description of the source API being merged.
  /// [mergedApiArn] ARN of the merged API. One of `merged_api_arn` or `merged_api_id` must be specified.
  /// [mergedApiId] ID of the merged API. One of `merged_api_arn` or `merged_api_id` must be specified.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceApiArn] ARN of the source API. One of `source_api_arn` or `source_api_id` must be specified.
  /// [sourceApiAssociationConfigs] Optional.
  /// [sourceApiId] ID of the source API. One of `source_api_arn` or `source_api_id` must be specified.
  /// [timeouts] Optional.
  SourceApiAssociationState({
    this.arn,
    this.associationId,
    this.description,
    this.mergedApiArn,
    this.mergedApiId,
    this.region,
    this.sourceApiArn,
    this.sourceApiAssociationConfigs,
    this.sourceApiId,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'associationId': ?associationId,
      'description': ?description,
      'mergedApiArn': ?mergedApiArn,
      'mergedApiId': ?mergedApiId,
      'region': ?region,
      'sourceApiArn': ?sourceApiArn,
      'sourceApiAssociationConfigs': ?pulumi.Input.mapOptionalInputValue<List<SourceApiAssociationSourceApiAssociationConfig>, List<Map<String, dynamic>>>(sourceApiAssociationConfigs, (value) => pulumi.Input.encodeList<SourceApiAssociationSourceApiAssociationConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceApiId': ?sourceApiId,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<SourceApiAssociationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory SourceApiAssociationState.fromMap(Map<String, dynamic> map) {
    return SourceApiAssociationState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      associationId: map['associationId'] == null ? null : ((map['associationId'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      mergedApiArn: map['mergedApiArn'] == null ? null : ((map['mergedApiArn'] as String).input()).input(),
      mergedApiId: map['mergedApiId'] == null ? null : ((map['mergedApiId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      sourceApiArn: map['sourceApiArn'] == null ? null : ((map['sourceApiArn'] as String).input()).input(),
      sourceApiAssociationConfigs: map['sourceApiAssociationConfigs'] == null ? null : ((pulumi.Input.decodeList<SourceApiAssociationSourceApiAssociationConfig>(map['sourceApiAssociationConfigs']!, (value) => SourceApiAssociationSourceApiAssociationConfig.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      sourceApiId: map['sourceApiId'] == null ? null : ((map['sourceApiId'] as String).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((SourceApiAssociationTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

