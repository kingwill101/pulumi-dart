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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      associationId: (() { final guardedValue = map['associationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mergedApiArn: (() { final guardedValue = map['mergedApiArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mergedApiId: (() { final guardedValue = map['mergedApiId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceApiArn: (() { final guardedValue = map['sourceApiArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceApiAssociationConfigs: (() { final guardedValue = map['sourceApiAssociationConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SourceApiAssociationSourceApiAssociationConfig>(guardedValue, (value) => SourceApiAssociationSourceApiAssociationConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourceApiId: (() { final guardedValue = map['sourceApiId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SourceApiAssociationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

