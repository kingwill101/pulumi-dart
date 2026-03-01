// ignore_for_file: unused_element, unnecessary_cast

import 'scan_status_enum_value_response.dart';

/// Definition of ImageScanStatus
class ImageScanStatusResponse {
  /// <p>The description of the image scan status.</p>
  final String? description;
  /// <p>The current state of an image scan.</p>
  final ScanStatusEnumValueResponse? status;

  /// Creates a new [ImageScanStatusResponse].
  /// [description] <p>The description of the image scan status.</p>
  /// [status] <p>The current state of an image scan.</p>
  ImageScanStatusResponse({
    this.description,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'status': ?status == null ? null : status!.toMap(),
    };
  }

  factory ImageScanStatusResponse.fromMap(Map<String, dynamic> map) {
    return ImageScanStatusResponse(
      description: map['description'] == null ? null : map['description'] as String,
      status: map['status'] == null ? null : ScanStatusEnumValueResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

