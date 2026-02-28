// ignore_for_file: unused_element, unnecessary_cast

import 'ser_de_info.dart';

/// Stores physical storage information of the data.
class StorageDescriptor {
  /// The fully qualified Java class name of the input format.
  final String? inputFormat;

  /// Cloud Storage folder URI where the table data is stored, starting with "gs://".
  final String? locationUri;

  /// The fully qualified Java class name of the output format.
  final String? outputFormat;

  /// Serializer and deserializer information.
  final SerDeInfo? serdeInfo;

  /// Creates a new [StorageDescriptor].
  /// [inputFormat] The fully qualified Java class name of the input format.
  /// [locationUri] Cloud Storage folder URI where the table data is stored, starting with "gs://".
  /// [outputFormat] The fully qualified Java class name of the output format.
  /// [serdeInfo] Serializer and deserializer information.
  StorageDescriptor({
    this.inputFormat,
    this.locationUri,
    this.outputFormat,
    this.serdeInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final inputFormatValue = inputFormat;
    if (inputFormatValue != null) {
      map['inputFormat'] = inputFormatValue;
    }
    final locationUriValue = locationUri;
    if (locationUriValue != null) {
      map['locationUri'] = locationUriValue;
    }
    final outputFormatValue = outputFormat;
    if (outputFormatValue != null) {
      map['outputFormat'] = outputFormatValue;
    }
    final serdeInfoValue = serdeInfo;
    if (serdeInfoValue != null) {
      map['serdeInfo'] = serdeInfoValue.toMap();
    }
    return map;
  }

  factory StorageDescriptor.fromMap(Map<String, dynamic> map) {
    return StorageDescriptor(
      inputFormat:
          map['inputFormat'] == null ? null : map['inputFormat'] as String,
      locationUri:
          map['locationUri'] == null ? null : map['locationUri'] as String,
      outputFormat:
          map['outputFormat'] == null ? null : map['outputFormat'] as String,
      serdeInfo: map['serdeInfo'] == null
          ? null
          : SerDeInfo.fromMap(
              (map['serdeInfo'] as Map).cast<String, dynamic>()),
    );
  }
}
