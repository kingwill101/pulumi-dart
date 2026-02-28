// ignore_for_file: unused_element, unnecessary_cast

import 'header.dart';

/// Wraps the Header object.
class HeaderOverride {
  /// header embodying a key and a value.
  final Header? header;

  /// Creates a new [HeaderOverride].
  /// [header] header embodying a key and a value.
  HeaderOverride({
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

  factory HeaderOverride.fromMap(Map<String, dynamic> map) {
    return HeaderOverride(
      header: map['header'] == null
          ? null
          : Header.fromMap((map['header'] as Map).cast<String, dynamic>()),
    );
  }
}
