// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../recorder_recording_group_exclusion_by_resource_type/recorder_recording_group_exclusion_by_resource_type.dart';
import '../recorder_recording_group_recording_strategy/recorder_recording_group_recording_strategy.dart';

class RecorderRecordingGroup {
  /// Specifies whether AWS Config records configuration changes for every supported type of regional resource (which includes any new type that will become supported in the future). Conflicts with `resource_types`. Defaults to `true`.
  final bool? allSupported;

  /// An object that specifies how AWS Config excludes resource types from being recorded by the configuration recorder.To use this option, you must set the useOnly field of RecordingStrategy to `EXCLUSION_BY_RESOURCE_TYPES` Requires `all_supported = false`. Conflicts with `resource_types`.
  final List<RecorderRecordingGroupExclusionByResourceType>?
      exclusionByResourceTypes;

  /// Specifies whether AWS Config includes all supported types of _global resources_ with the resources that it records. Requires `all_supported = true`. Conflicts with `resource_types`.
  final bool? includeGlobalResourceTypes;

  /// Recording Strategy. Detailed below.
  final List<RecorderRecordingGroupRecordingStrategy>? recordingStrategies;

  /// A list that specifies the types of AWS resources for which AWS Config records configuration changes (for example, `AWS::EC2::Instance` or `AWS::CloudTrail::Trail`). See [relevant part of AWS Docs](http://docs.aws.amazon.com/config/latest/APIReference/API_ResourceIdentifier.html#config-Type-ResourceIdentifier-resourceType) for available types. In order to use this attribute, `all_supported` must be set to false.
  final List<String>? resourceTypes;

  RecorderRecordingGroup({
    this.allSupported,
    this.exclusionByResourceTypes,
    this.includeGlobalResourceTypes,
    this.recordingStrategies,
    this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allSupportedValue = allSupported;
    if (allSupportedValue != null) {
      map['allSupported'] = allSupportedValue;
    }
    final exclusionByResourceTypesValue = exclusionByResourceTypes;
    if (exclusionByResourceTypesValue != null) {
      map['exclusionByResourceTypes'] = Input.encodeList<
              RecorderRecordingGroupExclusionByResourceType,
              Map<String, dynamic>>(
          exclusionByResourceTypesValue, (value) => value.toMap());
    }
    final includeGlobalResourceTypesValue = includeGlobalResourceTypes;
    if (includeGlobalResourceTypesValue != null) {
      map['includeGlobalResourceTypes'] = includeGlobalResourceTypesValue;
    }
    final recordingStrategiesValue = recordingStrategies;
    if (recordingStrategiesValue != null) {
      map['recordingStrategies'] = Input.encodeList<
              RecorderRecordingGroupRecordingStrategy, Map<String, dynamic>>(
          recordingStrategiesValue, (value) => value.toMap());
    }
    final resourceTypesValue = resourceTypes;
    if (resourceTypesValue != null) {
      map['resourceTypes'] = resourceTypesValue;
    }
    return map;
  }

  factory RecorderRecordingGroup.fromMap(Map<String, dynamic> map) {
    return RecorderRecordingGroup(
      allSupported:
          map['allSupported'] == null ? null : map['allSupported'] as bool,
      exclusionByResourceTypes: map['exclusionByResourceTypes'] == null
          ? null
          : Input.decodeList<RecorderRecordingGroupExclusionByResourceType>(
              map['exclusionByResourceTypes'],
              (value) => RecorderRecordingGroupExclusionByResourceType.fromMap(
                  (value as Map).cast<String, dynamic>())),
      includeGlobalResourceTypes: map['includeGlobalResourceTypes'] == null
          ? null
          : map['includeGlobalResourceTypes'] as bool,
      recordingStrategies: map['recordingStrategies'] == null
          ? null
          : Input.decodeList<RecorderRecordingGroupRecordingStrategy>(
              map['recordingStrategies'],
              (value) => RecorderRecordingGroupRecordingStrategy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceTypes: map['resourceTypes'] == null
          ? null
          : (map['resourceTypes'] as List).cast<String>(),
    );
  }
}
