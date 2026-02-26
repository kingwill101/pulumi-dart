// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_type_date_time.dart';

/// DateTime values.
class GoogleCloudContentwarehouseV1DateTimeArray {
  /// List of datetime values. Both OffsetDateTime and ZonedDateTime are supported.
  final List<GoogleTypeDateTime>? values;

  GoogleCloudContentwarehouseV1DateTimeArray({
    this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final valuesValue = values;
    if (valuesValue != null) {
      map['values'] =
          Input.encodeList<GoogleTypeDateTime, Map<String, dynamic>>(
              valuesValue, (value) => value.toMap());
    }
    return map;
  }

  factory GoogleCloudContentwarehouseV1DateTimeArray.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1DateTimeArray(
      values: map['values'] == null
          ? null
          : Input.decodeList<GoogleTypeDateTime>(
              map['values'],
              (value) => GoogleTypeDateTime.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
