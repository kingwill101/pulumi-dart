// ignore_for_file: unused_element, unnecessary_cast

import 'header_response2.dart';

/// Wraps the Header object.
class HeaderOverrideResponse2 {
  /// header embodying a key and a value.
  final HeaderResponse2 header;

  HeaderOverrideResponse2({
    required this.header,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['header'] = header.toMap();
    return map;
  }

  factory HeaderOverrideResponse2.fromMap(Map<String, dynamic> map) {
    return HeaderOverrideResponse2(
      header: HeaderResponse2.fromMap(
          (map['header'] as Map).cast<String, dynamic>()),
    );
  }
}
