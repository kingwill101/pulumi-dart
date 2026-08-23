// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scan_status_enum_value.dart';

/// Definition of ImageScanStatus
class ImageScanStatus {
  /// &lt;p&gt;The description of the image scan status.&lt;/p&gt;
  final pulumi.Input<String>? description;
  /// &lt;p&gt;The current state of an image scan.&lt;/p&gt;
  final pulumi.Input<ScanStatusEnumValue>? status;

  /// Creates a new [ImageScanStatus].
  /// [description] &lt;p&gt;The description of the image scan status.&lt;/p&gt;
  /// [status] &lt;p&gt;The current state of an image scan.&lt;/p&gt;
  const ImageScanStatus({
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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScanStatusEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
