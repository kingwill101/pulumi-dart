// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResponseHeadersPolicyCorsConfigAccessControlAllowHeader {
  final pulumi.Input<List<String>> items;

  /// Creates a new [GetResponseHeadersPolicyCorsConfigAccessControlAllowHeader].
  /// [items] Required.
  GetResponseHeadersPolicyCorsConfigAccessControlAllowHeader({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'items': items};
  }

  factory GetResponseHeadersPolicyCorsConfigAccessControlAllowHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetResponseHeadersPolicyCorsConfigAccessControlAllowHeader(
      items: pulumi.Input.fromValue((map['items'] as List).cast<String>()),
    );
  }
}
