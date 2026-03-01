// ignore_for_file: unused_element, unnecessary_cast

import 'scan_status_enum_value.dart';

/// Definition of ImageScanStatus
class ImageScanStatus {
  /// <p>The description of the image scan status.</p>
  final String? description;
  /// <p>The current state of an image scan.</p>
  final ScanStatusEnumValue? status;

  /// Creates a new [ImageScanStatus].
  /// [description] <p>The description of the image scan status.</p>
  /// [status] <p>The current state of an image scan.</p>
  ImageScanStatus({
    this.description,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'status': ?status == null ? null : status!.toMap(),
    };
  }

  factory ImageScanStatus.fromMap(Map<String, dynamic> map) {
    return ImageScanStatus(
      description: map['description'] == null ? null : map['description'] as String,
      status: map['status'] == null ? null : ScanStatusEnumValue.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

