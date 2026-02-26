// ignore_for_file: unused_element, unnecessary_cast

import 'header3.dart';

/// Wraps the Header object.
class HeaderOverride3 {
  /// header embodying a key and a value.
  final Header3? header;

  HeaderOverride3({
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

  factory HeaderOverride3.fromMap(Map<String, dynamic> map) {
    return HeaderOverride3(
      header: map['header'] == null
          ? null
          : Header3.fromMap((map['header'] as Map).cast<String, dynamic>()),
    );
  }
}
