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
  /// ARN of the merged API. One of `mergedApiArn` or `mergedApiId` must be specified.
  final pulumi.Input<String>? mergedApiArn;
  /// ID of the merged API. One of `mergedApiArn` or `mergedApiId` must be specified.
  final pulumi.Input<String>? mergedApiId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the source API. One of `sourceApiArn` or `sourceApiId` must be specified.
  final pulumi.Input<String>? sourceApiArn;
  /// Source API Association configuration. See `sourceApiAssociationConfig` Block for details.
  final pulumi.Input<List<SourceApiAssociationSourceApiAssociationConfig>>? sourceApiAssociationConfigs;
  /// ID of the source API. One of `sourceApiArn` or `sourceApiId` must be specified.
  final pulumi.Input<String>? sourceApiId;
  final pulumi.Input<SourceApiAssociationTimeouts>? timeouts;

  /// Creates a new [SourceApiAssociationArgs].
  /// [description] Description of the source API being merged.
  /// [mergedApiArn] ARN of the merged API. One of `mergedApiArn` or `mergedApiId` must be specified.
  /// [mergedApiId] ID of the merged API. One of `mergedApiArn` or `mergedApiId` must be specified.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceApiArn] ARN of the source API. One of `sourceApiArn` or `sourceApiId` must be specified.
  /// [sourceApiAssociationConfigs] Source API Association configuration. See `sourceApiAssociationConfig` Block for details.
  /// [sourceApiId] ID of the source API. One of `sourceApiArn` or `sourceApiId` must be specified.
  /// [timeouts] Optional.
  const SourceApiAssociationArgs({
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

  factory SourceApiAssociationArgs.fromMap(Map<String, dynamic> map) {
    return SourceApiAssociationArgs(
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
