// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_contentwarehouse_v1_merge_fields_options.dart';
import 'google_cloud_contentwarehouse_v1_update_options_update_type.dart';

/// Options for Update operations.
class GoogleCloudContentwarehouseV1UpdateOptions {
  /// Options for merging.
  final GoogleCloudContentwarehouseV1MergeFieldsOptions? mergeFieldsOptions;

  /// Field mask for merging Document fields. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  final String? updateMask;

  /// Type for update.
  final GoogleCloudContentwarehouseV1UpdateOptionsUpdateType? updateType;

  GoogleCloudContentwarehouseV1UpdateOptions({
    this.mergeFieldsOptions,
    this.updateMask,
    this.updateType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final mergeFieldsOptionsValue = mergeFieldsOptions;
    if (mergeFieldsOptionsValue != null) {
      map['mergeFieldsOptions'] = mergeFieldsOptionsValue.toMap();
    }
    final updateMaskValue = updateMask;
    if (updateMaskValue != null) {
      map['updateMask'] = updateMaskValue;
    }
    final updateTypeValue = updateType;
    if (updateTypeValue != null) {
      map['updateType'] = updateTypeValue.value;
    }
    return map;
  }

  factory GoogleCloudContentwarehouseV1UpdateOptions.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1UpdateOptions(
      mergeFieldsOptions: map['mergeFieldsOptions'] == null
          ? null
          : GoogleCloudContentwarehouseV1MergeFieldsOptions.fromMap(
              (map['mergeFieldsOptions'] as Map).cast<String, dynamic>()),
      updateMask:
          map['updateMask'] == null ? null : map['updateMask'] as String,
      updateType: map['updateType'] == null
          ? null
          : GoogleCloudContentwarehouseV1UpdateOptionsUpdateType.fromValue(
              map['updateType'] as String),
    );
  }
}
