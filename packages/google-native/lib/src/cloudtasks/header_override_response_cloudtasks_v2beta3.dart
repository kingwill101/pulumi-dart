// ignore_for_file: unused_element, unnecessary_cast

import 'header_response_cloudtasks_v2beta3.dart';

/// Wraps the Header object.
class HeaderOverrideResponseCloudtasksV2beta3 {
  /// header embodying a key and a value.
  final HeaderResponseCloudtasksV2beta3 header;

  /// Creates a new [HeaderOverrideResponseCloudtasksV2beta3].
  /// [header] header embodying a key and a value.
  HeaderOverrideResponseCloudtasksV2beta3({
    required this.header,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['header'] = header.toMap();
    return map;
  }

  factory HeaderOverrideResponseCloudtasksV2beta3.fromMap(
      Map<String, dynamic> map) {
    return HeaderOverrideResponseCloudtasksV2beta3(
      header: HeaderResponseCloudtasksV2beta3.fromMap(
          (map['header'] as Map).cast<String, dynamic>()),
    );
  }
}
