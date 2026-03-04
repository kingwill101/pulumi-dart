// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OriginRequestPolicyHeadersConfigHeaders {
  final pulumi.Input<List<String>>? items;

  /// Creates a new [OriginRequestPolicyHeadersConfigHeaders].
  /// [items] Optional.
  OriginRequestPolicyHeadersConfigHeaders({this.items});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'items': ?items};
  }

  factory OriginRequestPolicyHeadersConfigHeaders.fromMap(
    Map<String, dynamic> map,
  ) {
    return OriginRequestPolicyHeadersConfigHeaders(
      items: (() {
        final guardedValue = map['items'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
