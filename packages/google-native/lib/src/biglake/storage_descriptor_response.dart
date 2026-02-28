// ignore_for_file: unused_element, unnecessary_cast

import 'ser_de_info_response.dart';

/// Stores physical storage information of the data.
class StorageDescriptorResponse {
  /// The fully qualified Java class name of the input format.
  final String inputFormat;

  /// Cloud Storage folder URI where the table data is stored, starting with "gs://".
  final String locationUri;

  /// The fully qualified Java class name of the output format.
  final String outputFormat;

  /// Serializer and deserializer information.
  final SerDeInfoResponse serdeInfo;

  /// Creates a new [StorageDescriptorResponse].
  /// [inputFormat] The fully qualified Java class name of the input format.
  /// [locationUri] Cloud Storage folder URI where the table data is stored, starting with "gs://".
  /// [outputFormat] The fully qualified Java class name of the output format.
  /// [serdeInfo] Serializer and deserializer information.
  StorageDescriptorResponse({
    required this.inputFormat,
    required this.locationUri,
    required this.outputFormat,
    required this.serdeInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inputFormat'] = inputFormat;
    map['locationUri'] = locationUri;
    map['outputFormat'] = outputFormat;
    map['serdeInfo'] = serdeInfo.toMap();
    return map;
  }

  factory StorageDescriptorResponse.fromMap(Map<String, dynamic> map) {
    return StorageDescriptorResponse(
      inputFormat: map['inputFormat'] as String,
      locationUri: map['locationUri'] as String,
      outputFormat: map['outputFormat'] as String,
      serdeInfo: SerDeInfoResponse.fromMap(
          (map['serdeInfo'] as Map).cast<String, dynamic>()),
    );
  }
}
