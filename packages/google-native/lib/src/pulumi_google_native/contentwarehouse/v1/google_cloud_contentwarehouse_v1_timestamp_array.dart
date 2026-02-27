// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_contentwarehouse_v1_timestamp_value.dart';

/// Timestamp values.
class GoogleCloudContentwarehouseV1TimestampArray {
  /// List of timestamp values.
  final List<GoogleCloudContentwarehouseV1TimestampValue>? values;

  GoogleCloudContentwarehouseV1TimestampArray({
    this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final valuesValue = values;
    if (valuesValue != null) {
      map['values'] = Input.encodeList<
          GoogleCloudContentwarehouseV1TimestampValue,
          Map<String, dynamic>>(valuesValue, (value) => value.toMap());
    }
    return map;
  }

  factory GoogleCloudContentwarehouseV1TimestampArray.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1TimestampArray(
      values: map['values'] == null
          ? null
          : Input.decodeList<GoogleCloudContentwarehouseV1TimestampValue>(
              map['values'],
              (value) => GoogleCloudContentwarehouseV1TimestampValue.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
