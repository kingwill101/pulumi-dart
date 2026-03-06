// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketResponseHeaderRuleHideHeaders {
  /// The response header needs to be hidden.
  final pulumi.Input<List<String>>? headers;

  /// Creates a new [BucketResponseHeaderRuleHideHeaders].
  /// [headers] The response header needs to be hidden.
  const BucketResponseHeaderRuleHideHeaders({
    this.headers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?headers,
    };
  }

  factory BucketResponseHeaderRuleHideHeaders.fromMap(Map<String, dynamic> map) {
    return BucketResponseHeaderRuleHideHeaders(
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

