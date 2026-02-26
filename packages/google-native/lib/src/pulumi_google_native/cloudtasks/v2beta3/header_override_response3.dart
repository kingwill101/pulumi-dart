// ignore_for_file: unused_element, unnecessary_cast

import 'header_response3.dart';

/// Wraps the Header object.
class HeaderOverrideResponse3 {
  /// header embodying a key and a value.
  final HeaderResponse3 header;

  HeaderOverrideResponse3({
    required this.header,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['header'] = header.toMap();
    return map;
  }

  factory HeaderOverrideResponse3.fromMap(Map<String, dynamic> map) {
    return HeaderOverrideResponse3(
      header: HeaderResponse3.fromMap(
          (map['header'] as Map).cast<String, dynamic>()),
    );
  }
}
