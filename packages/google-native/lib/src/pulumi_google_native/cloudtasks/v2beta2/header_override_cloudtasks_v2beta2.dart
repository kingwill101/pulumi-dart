// ignore_for_file: unused_element, unnecessary_cast

import 'header_cloudtasks_v2beta2.dart';

/// Wraps the Header object.
class HeaderOverrideCloudtasksV2beta2 {
  /// header embodying a key and a value.
  final HeaderCloudtasksV2beta2? header;

  HeaderOverrideCloudtasksV2beta2({
    this.header,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final headerValue = header;
    if (headerValue != null) {
      map['header'] = headerValue.toMap();
    }
    return map;
  }

  factory HeaderOverrideCloudtasksV2beta2.fromMap(Map<String, dynamic> map) {
    return HeaderOverrideCloudtasksV2beta2(
      header: map['header'] == null
          ? null
          : HeaderCloudtasksV2beta2.fromMap(
              (map['header'] as Map).cast<String, dynamic>()),
    );
  }
}
