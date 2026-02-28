// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_api_association_source_api_association_config.dart';
import 'source_api_association_timeouts.dart';

/// {@template pulumi_appsync_source_api_association_source_api_association_args_doc}
/// The set of arguments for SourceApiAssociation.
/// {@endtemplate}
/// {@macro pulumi_appsync_source_api_association_source_api_association_args_doc}
class SourceApiAssociationArgs {
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
  final pulumi.Input<List<SourceApiAssociationSourceApiAssociationConfig>>?
      sourceApiAssociationConfigs;

  /// ID of the source API. One of `source_api_arn` or `source_api_id` must be specified.
  final pulumi.Input<String>? sourceApiId;
  final pulumi.Input<SourceApiAssociationTimeouts>? timeouts;

  /// Creates a new [SourceApiAssociationArgs].
  /// [description] Description of the source API being merged.
  /// [mergedApiArn] ARN of the merged API. One of `merged_api_arn` or `merged_api_id` must be specified.
  /// [mergedApiId] ID of the merged API. One of `merged_api_arn` or `merged_api_id` must be specified.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceApiArn] ARN of the source API. One of `source_api_arn` or `source_api_id` must be specified.
  /// [sourceApiAssociationConfigs] Optional.
  /// [sourceApiId] ID of the source API. One of `source_api_arn` or `source_api_id` must be specified.
  /// [timeouts] Optional.
  SourceApiAssociationArgs({
    String? description,
    String? mergedApiArn,
    String? mergedApiId,
    String? region,
    String? sourceApiArn,
    List<SourceApiAssociationSourceApiAssociationConfig>?
        sourceApiAssociationConfigs,
    String? sourceApiId,
    SourceApiAssociationTimeouts? timeouts,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        mergedApiArn = pulumi.Input.asOptionalInput<String>(mergedApiArn),
        mergedApiId = pulumi.Input.asOptionalInput<String>(mergedApiId),
        region = pulumi.Input.asOptionalInput<String>(region),
        sourceApiArn = pulumi.Input.asOptionalInput<String>(sourceApiArn),
        sourceApiAssociationConfigs = pulumi.Input.asOptionalInput<
                List<SourceApiAssociationSourceApiAssociationConfig>>(
            sourceApiAssociationConfigs),
        sourceApiId = pulumi.Input.asOptionalInput<String>(sourceApiId),
        timeouts = pulumi.Input.asOptionalInput<SourceApiAssociationTimeouts>(
            timeouts);

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
      map['sourceApiAssociationConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<SourceApiAssociationSourceApiAssociationConfig>,
              List<Map<String, dynamic>>>(
          sourceApiAssociationConfigsValue,
          (value) => pulumi.Input.encodeList<
              SourceApiAssociationSourceApiAssociationConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final sourceApiIdValue = sourceApiId;
    if (sourceApiIdValue != null) {
      map['sourceApiId'] = sourceApiIdValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          SourceApiAssociationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory SourceApiAssociationArgs.fromMap(Map<String, dynamic> map) {
    return SourceApiAssociationArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      mergedApiArn:
          map['mergedApiArn'] == null ? null : map['mergedApiArn'] as String,
      mergedApiId:
          map['mergedApiId'] == null ? null : map['mergedApiId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      sourceApiArn:
          map['sourceApiArn'] == null ? null : map['sourceApiArn'] as String,
      sourceApiAssociationConfigs: map['sourceApiAssociationConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  SourceApiAssociationSourceApiAssociationConfig>(
              map['sourceApiAssociationConfigs'],
              (value) => SourceApiAssociationSourceApiAssociationConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sourceApiId:
          map['sourceApiId'] == null ? null : map['sourceApiId'] as String,
      timeouts: map['timeouts'] == null
          ? null
          : SourceApiAssociationTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}
