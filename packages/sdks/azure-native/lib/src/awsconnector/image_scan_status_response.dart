// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scan_status_enum_value_response.dart';

/// Definition of ImageScanStatus
class ImageScanStatusResponse {
  /// <p>The description of the image scan status.</p>
  final pulumi.Input<String>? description;
  /// <p>The current state of an image scan.</p>
  final pulumi.Input<ScanStatusEnumValueResponse>? status;

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
      'status': ?pulumi.Input.mapOptionalInputValue<ScanStatusEnumValueResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory ImageScanStatusResponse.fromMap(Map<String, dynamic> map) {
    return ImageScanStatusResponse(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      status: map['status'] == null ? null : (ScanStatusEnumValueResponse.fromMap((map['status']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

