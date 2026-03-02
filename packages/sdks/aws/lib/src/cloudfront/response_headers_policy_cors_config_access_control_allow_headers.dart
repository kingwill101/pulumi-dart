// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResponseHeadersPolicyCorsConfigAccessControlAllowHeaders {
  final pulumi.Input<List<String>>? items;

  /// Creates a new [ResponseHeadersPolicyCorsConfigAccessControlAllowHeaders].
  /// [items] Optional.
  ResponseHeadersPolicyCorsConfigAccessControlAllowHeaders({
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?items,
    };
  }

  factory ResponseHeadersPolicyCorsConfigAccessControlAllowHeaders.fromMap(Map<String, dynamic> map) {
    return ResponseHeadersPolicyCorsConfigAccessControlAllowHeaders(
      items: map['items'] == null ? null : (((map['items'] as List).cast<String>()).input()).input(),
    );
  }
}

