// ignore_for_file: unused_element, unnecessary_cast

import 'header_response_cloudtasks_v2beta2.dart';

/// Wraps the Header object.
class HeaderOverrideResponseCloudtasksV2beta2 {
  /// header embodying a key and a value.
  final HeaderResponseCloudtasksV2beta2 header;

  /// Creates a new [HeaderOverrideResponseCloudtasksV2beta2].
  /// [header] header embodying a key and a value.
  HeaderOverrideResponseCloudtasksV2beta2({required this.header});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'header': header.toMap()};
  }

  factory HeaderOverrideResponseCloudtasksV2beta2.fromMap(
    Map<String, dynamic> map,
  ) {
    return HeaderOverrideResponseCloudtasksV2beta2(
      header: HeaderResponseCloudtasksV2beta2.fromMap(
        (map['header'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
