// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResponseHeadersPolicyCorsConfigAccessControlAllowOrigins {
  final pulumi.Input<List<String>>? items;

  /// Creates a new [ResponseHeadersPolicyCorsConfigAccessControlAllowOrigins].
  /// [items] Optional.
  ResponseHeadersPolicyCorsConfigAccessControlAllowOrigins({
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?items,
    };
  }

  factory ResponseHeadersPolicyCorsConfigAccessControlAllowOrigins.fromMap(Map<String, dynamic> map) {
    return ResponseHeadersPolicyCorsConfigAccessControlAllowOrigins(
      items: map['items'] == null ? null : (((map['items'] as List).cast<String>()).input()).input(),
    );
  }
}

