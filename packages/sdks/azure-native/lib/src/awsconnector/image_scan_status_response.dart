// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scan_status_enum_value_response.dart';

/// Definition of ImageScanStatus
class ImageScanStatusResponse {
  /// &lt;p&gt;The description of the image scan status.&lt;/p&gt;
  final pulumi.Input<String>? description;
  /// &lt;p&gt;The current state of an image scan.&lt;/p&gt;
  final pulumi.Input<ScanStatusEnumValueResponse>? status;

  /// Creates a new [ImageScanStatusResponse].
  /// [description] &lt;p&gt;The description of the image scan status.&lt;/p&gt;
  /// [status] &lt;p&gt;The current state of an image scan.&lt;/p&gt;
  const ImageScanStatusResponse({
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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScanStatusEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
