// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recorder_recording_group_exclusion_by_resource_type.dart';
import 'recorder_recording_group_recording_strategy.dart';

class RecorderRecordingGroup {
  /// Specifies whether AWS Config records configuration changes for every supported type of regional resource (which includes any new type that will become supported in the future). Conflicts with `resourceTypes`. Defaults to `true`.
  final pulumi.Input<bool?>? allSupported;
  /// An object that specifies how AWS Config excludes resource types from being recorded by the configuration recorder.To use this option, you must set the useOnly field of RecordingStrategy to `EXCLUSION_BY_RESOURCE_TYPES` Requires `allSupported = false`. Conflicts with `resourceTypes`.
  final pulumi.Input<List<RecorderRecordingGroupExclusionByResourceType>?>? exclusionByResourceTypes;
  /// Specifies whether AWS Config includes all supported types of _global resources_ with the resources that it records. Requires `allSupported = true`. Conflicts with `resourceTypes`.
  final pulumi.Input<bool?>? includeGlobalResourceTypes;
  /// Recording Strategy. Detailed below.
  final pulumi.Input<List<RecorderRecordingGroupRecordingStrategy>?>? recordingStrategies;
  /// A list that specifies the types of AWS resources for which AWS Config records configuration changes (for example, `AWS::EC2::Instance` or `AWS::CloudTrail::Trail`). See [relevant part of AWS Docs](http://docs.aws.amazon.com/config/latest/APIReference/API_ResourceIdentifier.html#config-Type-ResourceIdentifier-resourceType) for available types. In order to use this attribute, `allSupported` must be set to false.
  final pulumi.Input<List<String>?>? resourceTypes;

  /// Creates a new [RecorderRecordingGroup].
  /// [allSupported] Specifies whether AWS Config records configuration changes for every supported type of regional resource (which includes any new type that will become supported in the future). Conflicts with `resourceTypes`. Defaults to `true`.
  /// [exclusionByResourceTypes] An object that specifies how AWS Config excludes resource types from being recorded by the configuration recorder.To use this option, you must set the useOnly field of RecordingStrategy to `EXCLUSION_BY_RESOURCE_TYPES` Requires `allSupported = false`. Conflicts with `resourceTypes`.
  /// [includeGlobalResourceTypes] Specifies whether AWS Config includes all supported types of _global resources_ with the resources that it records. Requires `allSupported = true`. Conflicts with `resourceTypes`.
  /// [recordingStrategies] Recording Strategy. Detailed below.
  /// [resourceTypes] A list that specifies the types of AWS resources for which AWS Config records configuration changes (for example, `AWS::EC2::Instance` or `AWS::CloudTrail::Trail`). See [relevant part of AWS Docs](http://docs.aws.amazon.com/config/latest/APIReference/API_ResourceIdentifier.html#config-Type-ResourceIdentifier-resourceType) for available types. In order to use this attribute, `allSupported` must be set to false.
  const RecorderRecordingGroup({
    this.allSupported,
    this.exclusionByResourceTypes,
    this.includeGlobalResourceTypes,
    this.recordingStrategies,
    this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allSupported': ?allSupported,
      'exclusionByResourceTypes': ?pulumi.Input.mapOptionalInputValue<List<RecorderRecordingGroupExclusionByResourceType>, List<Map<String, dynamic>>>(exclusionByResourceTypes, (value) => pulumi.Input.encodeList<RecorderRecordingGroupExclusionByResourceType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includeGlobalResourceTypes': ?includeGlobalResourceTypes,
      'recordingStrategies': ?pulumi.Input.mapOptionalInputValue<List<RecorderRecordingGroupRecordingStrategy>, List<Map<String, dynamic>>>(recordingStrategies, (value) => pulumi.Input.encodeList<RecorderRecordingGroupRecordingStrategy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceTypes': ?resourceTypes,
    };
  }

  factory RecorderRecordingGroup.fromMap(Map<String, dynamic> map) {
    return RecorderRecordingGroup(
      allSupported: (() { final guardedValue = map['allSupported']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      exclusionByResourceTypes: (() { final guardedValue = map['exclusionByResourceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RecorderRecordingGroupExclusionByResourceType>(guardedValue, (value) => RecorderRecordingGroupExclusionByResourceType.fromMap((value as Map).cast<String, dynamic>()))); })(),
      includeGlobalResourceTypes: (() { final guardedValue = map['includeGlobalResourceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      recordingStrategies: (() { final guardedValue = map['recordingStrategies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RecorderRecordingGroupRecordingStrategy>(guardedValue, (value) => RecorderRecordingGroupRecordingStrategy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceTypes: (() { final guardedValue = map['resourceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
