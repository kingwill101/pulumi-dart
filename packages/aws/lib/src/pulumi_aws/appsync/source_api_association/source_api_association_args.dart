// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../source_api_association_source_api_association_config/source_api_association_source_api_association_config.dart';
import '../source_api_association_timeouts/source_api_association_timeouts.dart';

/// The set of arguments for SourceApiAssociation.
class SourceApiAssociationArgs {
  /// Description of the source API being merged.
  final Input<String>? description;

  /// ARN of the merged API. One of `merged_api_arn` or `merged_api_id` must be specified.
  final Input<String>? mergedApiArn;

  /// ID of the merged API. One of `merged_api_arn` or `merged_api_id` must be specified.
  final Input<String>? mergedApiId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of the source API. One of `source_api_arn` or `source_api_id` must be specified.
  final Input<String>? sourceApiArn;
  final Input<List<SourceApiAssociationSourceApiAssociationConfig>>?
      sourceApiAssociationConfigs;

  /// ID of the source API. One of `source_api_arn` or `source_api_id` must be specified.
  final Input<String>? sourceApiId;
  final Input<SourceApiAssociationTimeouts>? timeouts;

  SourceApiAssociationArgs({
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
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final mergedApiArnValue = mergedApiArn;
    if (mergedApiArnValue != null) {
      map['mergedApiArn'] = mergedApiArnValue;
    }
    final mergedApiIdValue = mergedApiId;
    if (mergedApiIdValue != null) {
      map['mergedApiId'] = mergedApiIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sourceApiArnValue = sourceApiArn;
    if (sourceApiArnValue != null) {
      map['sourceApiArn'] = sourceApiArnValue;
    }
    final sourceApiAssociationConfigsValue = sourceApiAssociationConfigs;
    if (sourceApiAssociationConfigsValue != null) {
      map['sourceApiAssociationConfigs'] = Input.mapOptionalInputValue<
              List<SourceApiAssociationSourceApiAssociationConfig>,
              List<Map<String, dynamic>>>(
          sourceApiAssociationConfigsValue,
          (value) => Input.encodeList<
              SourceApiAssociationSourceApiAssociationConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final sourceApiIdValue = sourceApiId;
    if (sourceApiIdValue != null) {
      map['sourceApiId'] = sourceApiIdValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          SourceApiAssociationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory SourceApiAssociationArgs.fromMap(Map<String, dynamic> map) {
    return SourceApiAssociationArgs(
      description: Input.asOptionalInput<String>(map['description']),
      mergedApiArn: Input.asOptionalInput<String>(map['mergedApiArn']),
      mergedApiId: Input.asOptionalInput<String>(map['mergedApiId']),
      region: Input.asOptionalInput<String>(map['region']),
      sourceApiArn: Input.asOptionalInput<String>(map['sourceApiArn']),
      sourceApiAssociationConfigs: Input.asOptionalInput<
              List<SourceApiAssociationSourceApiAssociationConfig>>(
          map['sourceApiAssociationConfigs']),
      sourceApiId: Input.asOptionalInput<String>(map['sourceApiId']),
      timeouts:
          Input.asOptionalInput<SourceApiAssociationTimeouts>(map['timeouts']),
    );
  }
}
