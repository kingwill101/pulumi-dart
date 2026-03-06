// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResponseHeadersPolicyCorsConfigAccessControlAllowOrigin {
  final pulumi.Input<List<String>> items;

  /// Creates a new [GetResponseHeadersPolicyCorsConfigAccessControlAllowOrigin].
  /// [items] Required.
  const GetResponseHeadersPolicyCorsConfigAccessControlAllowOrigin({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': items,
    };
  }

  factory GetResponseHeadersPolicyCorsConfigAccessControlAllowOrigin.fromMap(Map<String, dynamic> map) {
    return GetResponseHeadersPolicyCorsConfigAccessControlAllowOrigin(
      items: pulumi.Input.fromValue((map['items'] as List).cast<String>()),
    );
  }
}

