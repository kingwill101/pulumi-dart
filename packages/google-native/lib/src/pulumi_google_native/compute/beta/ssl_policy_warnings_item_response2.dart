// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'ssl_policy_warnings_item_data_item_response2.dart';

class SslPolicyWarningsItemResponse2 {
  /// A warning code, if applicable. For example, Compute Engine returns NO_RESULTS_ON_PAGE if there are no results in the response.
  final String code;

  /// Metadata about this warning in key: value format. For example: "data": [ { "key": "scope", "value": "zones/us-east1-d" }
  final List<SslPolicyWarningsItemDataItemResponse2> data;

  /// A human-readable description of the warning code.
  final String message;

  SslPolicyWarningsItemResponse2({
    required this.code,
    required this.data,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['data'] = Input.encodeList<SslPolicyWarningsItemDataItemResponse2,
        Map<String, dynamic>>(data, (value) => value.toMap());
    map['message'] = message;
    return map;
  }

  factory SslPolicyWarningsItemResponse2.fromMap(Map<String, dynamic> map) {
    return SslPolicyWarningsItemResponse2(
      code: map['code'] as String,
      data: Input.decodeList<SslPolicyWarningsItemDataItemResponse2>(
          map['data'],
          (value) => SslPolicyWarningsItemDataItemResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      message: map['message'] as String,
    );
  }
}
