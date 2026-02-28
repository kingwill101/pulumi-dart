// ignore_for_file: unused_element, unnecessary_cast

import 'header_response.dart';

/// Wraps the Header object.
class HeaderOverrideResponse {
  /// header embodying a key and a value.
  final HeaderResponse header;

  /// Creates a new [HeaderOverrideResponse].
  /// [header] header embodying a key and a value.
  HeaderOverrideResponse({
    required this.header,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['header'] = header.toMap();
    return map;
  }

  factory HeaderOverrideResponse.fromMap(Map<String, dynamic> map) {
    return HeaderOverrideResponse(
      header: HeaderResponse.fromMap(
          (map['header'] as Map).cast<String, dynamic>()),
    );
  }
}
