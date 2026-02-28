// ignore_for_file: unused_element, unnecessary_cast

import 'header_cloudtasks_v2beta2.dart';

/// Wraps the Header object.
class HeaderOverrideCloudtasksV2beta2 {
  /// header embodying a key and a value.
  final HeaderCloudtasksV2beta2? header;

  /// Creates a new [HeaderOverrideCloudtasksV2beta2].
  /// [header] header embodying a key and a value.
  HeaderOverrideCloudtasksV2beta2({
    this.header,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'header': ?header == null ? null : header!.toMap(),
    };
  }

  factory HeaderOverrideCloudtasksV2beta2.fromMap(Map<String, dynamic> map) {
    return HeaderOverrideCloudtasksV2beta2(
      header: map['header'] == null ? null : HeaderCloudtasksV2beta2.fromMap((map['header'] as Map).cast<String, dynamic>()),
    );
  }
}

