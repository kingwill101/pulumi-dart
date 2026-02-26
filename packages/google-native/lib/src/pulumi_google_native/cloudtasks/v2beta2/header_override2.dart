// ignore_for_file: unused_element, unnecessary_cast

import 'header2.dart';

/// Wraps the Header object.
class HeaderOverride2 {
  /// header embodying a key and a value.
  final Header2? header;

  HeaderOverride2({
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

  factory HeaderOverride2.fromMap(Map<String, dynamic> map) {
    return HeaderOverride2(
      header: map['header'] == null
          ? null
          : Header2.fromMap((map['header'] as Map).cast<String, dynamic>()),
    );
  }
}
