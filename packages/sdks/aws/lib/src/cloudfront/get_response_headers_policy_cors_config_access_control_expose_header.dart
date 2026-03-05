// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResponseHeadersPolicyCorsConfigAccessControlExposeHeader {
  final pulumi.Input<List<String>> items;

  /// Creates a new [GetResponseHeadersPolicyCorsConfigAccessControlExposeHeader].
  /// [items] Required.
  GetResponseHeadersPolicyCorsConfigAccessControlExposeHeader({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': items,
    };
  }

  factory GetResponseHeadersPolicyCorsConfigAccessControlExposeHeader.fromMap(Map<String, dynamic> map) {
    return GetResponseHeadersPolicyCorsConfigAccessControlExposeHeader(
      items: pulumi.Input.fromValue((map['items'] as List).cast<String>()),
    );
  }
}

