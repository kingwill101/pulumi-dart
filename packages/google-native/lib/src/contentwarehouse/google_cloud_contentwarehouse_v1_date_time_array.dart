// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_type_date_time.dart';

/// DateTime values.
class GoogleCloudContentwarehouseV1DateTimeArray {
  /// List of datetime values. Both OffsetDateTime and ZonedDateTime are supported.
  final List<GoogleTypeDateTime>? values;

  /// Creates a new [GoogleCloudContentwarehouseV1DateTimeArray].
  /// [values] List of datetime values. Both OffsetDateTime and ZonedDateTime are supported.
  GoogleCloudContentwarehouseV1DateTimeArray({this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': ?values == null
          ? null
          : pulumi.Input.encodeList<GoogleTypeDateTime, Map<String, dynamic>>(
              values!,
              (value) => value.toMap(),
            ),
    };
  }

  factory GoogleCloudContentwarehouseV1DateTimeArray.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContentwarehouseV1DateTimeArray(
      values: map['values'] == null
          ? null
          : pulumi.Input.decodeList<GoogleTypeDateTime>(
              map['values'],
              (value) => GoogleTypeDateTime.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
