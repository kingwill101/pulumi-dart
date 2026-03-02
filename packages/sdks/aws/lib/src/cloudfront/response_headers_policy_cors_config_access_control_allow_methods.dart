// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResponseHeadersPolicyCorsConfigAccessControlAllowMethods {
  final pulumi.Input<List<String>>? items;

  /// Creates a new [ResponseHeadersPolicyCorsConfigAccessControlAllowMethods].
  /// [items] Optional.
  ResponseHeadersPolicyCorsConfigAccessControlAllowMethods({
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?items,
    };
  }

  factory ResponseHeadersPolicyCorsConfigAccessControlAllowMethods.fromMap(Map<String, dynamic> map) {
    return ResponseHeadersPolicyCorsConfigAccessControlAllowMethods(
      items: map['items'] == null ? null : (((map['items'] as List).cast<String>()).input()).input(),
    );
  }
}

