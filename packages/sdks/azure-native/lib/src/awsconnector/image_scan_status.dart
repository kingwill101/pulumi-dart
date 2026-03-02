// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scan_status_enum_value.dart';

/// Definition of ImageScanStatus
class ImageScanStatus {
  /// <p>The description of the image scan status.</p>
  final pulumi.Input<String>? description;
  /// <p>The current state of an image scan.</p>
  final pulumi.Input<ScanStatusEnumValue>? status;

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
      'status': ?pulumi.Input.mapOptionalInputValue<ScanStatusEnumValue, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory ImageScanStatus.fromMap(Map<String, dynamic> map) {
    return ImageScanStatus(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      status: map['status'] == null ? null : (ScanStatusEnumValue.fromMap((map['status'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

