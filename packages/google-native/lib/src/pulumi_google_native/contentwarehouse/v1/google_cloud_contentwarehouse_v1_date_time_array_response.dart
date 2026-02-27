// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_type_date_time_response.dart';

/// DateTime values.
class GoogleCloudContentwarehouseV1DateTimeArrayResponse {
  /// List of datetime values. Both OffsetDateTime and ZonedDateTime are supported.
  final List<GoogleTypeDateTimeResponse> values;

  GoogleCloudContentwarehouseV1DateTimeArrayResponse({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] =
        Input.encodeList<GoogleTypeDateTimeResponse, Map<String, dynamic>>(
            values, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudContentwarehouseV1DateTimeArrayResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1DateTimeArrayResponse(
      values: Input.decodeList<GoogleTypeDateTimeResponse>(
          map['values'],
          (value) => GoogleTypeDateTimeResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
