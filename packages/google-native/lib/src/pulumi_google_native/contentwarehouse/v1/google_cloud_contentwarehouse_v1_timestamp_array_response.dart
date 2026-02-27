// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_contentwarehouse_v1_timestamp_value_response.dart';

/// Timestamp values.
class GoogleCloudContentwarehouseV1TimestampArrayResponse {
  /// List of timestamp values.
  final List<GoogleCloudContentwarehouseV1TimestampValueResponse> values;

  GoogleCloudContentwarehouseV1TimestampArrayResponse({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = Input.encodeList<
        GoogleCloudContentwarehouseV1TimestampValueResponse,
        Map<String, dynamic>>(values, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudContentwarehouseV1TimestampArrayResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1TimestampArrayResponse(
      values:
          Input.decodeList<GoogleCloudContentwarehouseV1TimestampValueResponse>(
              map['values'],
              (value) =>
                  GoogleCloudContentwarehouseV1TimestampValueResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
