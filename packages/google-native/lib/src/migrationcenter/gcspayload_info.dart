// ignore_for_file: unused_element, unnecessary_cast

import 'gcspayload_info_format.dart';

/// A resource that represents a payload hosted on Google Cloud Storage.
class GCSPayloadInfo {
  /// The import job format.
  final GCSPayloadInfoFormat? format;

  /// The payload path in Google Cloud Storage.
  final String? path;

  /// Creates a new [GCSPayloadInfo].
  /// [format] The import job format.
  /// [path] The payload path in Google Cloud Storage.
  GCSPayloadInfo({this.format, this.path});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?format == null ? null : format!.value,
      'path': ?path,
    };
  }

  factory GCSPayloadInfo.fromMap(Map<String, dynamic> map) {
    return GCSPayloadInfo(
      format: map['format'] == null
          ? null
          : GCSPayloadInfoFormat.fromValue(map['format'] as String),
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}
