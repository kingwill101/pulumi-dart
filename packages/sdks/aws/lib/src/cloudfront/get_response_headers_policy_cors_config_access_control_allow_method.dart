// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResponseHeadersPolicyCorsConfigAccessControlAllowMethod {
  final pulumi.Input<List<String>> items;

  /// Creates a new [GetResponseHeadersPolicyCorsConfigAccessControlAllowMethod].
  /// [items] Required.
  const GetResponseHeadersPolicyCorsConfigAccessControlAllowMethod({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': items,
    };
  }

  factory GetResponseHeadersPolicyCorsConfigAccessControlAllowMethod.fromMap(Map<String, dynamic> map) {
    return GetResponseHeadersPolicyCorsConfigAccessControlAllowMethod(
      items: pulumi.Input.fromValue((map['items'] as List).cast<String>()),
    );
  }
}
