// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_ssl_policy_warnings_item_data_item_response_compute_beta.dart';

class RegionSslPolicyWarningsItemResponseComputeBeta {
  /// A warning code, if applicable. For example, Compute Engine returns NO_RESULTS_ON_PAGE if there are no results in the response.
  final String code;

  /// Metadata about this warning in key: value format. For example: "data": [ { "key": "scope", "value": "zones/us-east1-d" }
  final List<RegionSslPolicyWarningsItemDataItemResponseComputeBeta> data;

  /// A human-readable description of the warning code.
  final String message;

  /// Creates a new [RegionSslPolicyWarningsItemResponseComputeBeta].
  /// [code] A warning code, if applicable. For example, Compute Engine returns NO_RESULTS_ON_PAGE if there are no results in the response.
  /// [data] Metadata about this warning in key: value format. For example: "data": [ { "key": "scope", "value": "zones/us-east1-d" }
  /// [message] A human-readable description of the warning code.
  RegionSslPolicyWarningsItemResponseComputeBeta({
    required this.code,
    required this.data,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['data'] = pulumi.Input.encodeList<
        RegionSslPolicyWarningsItemDataItemResponseComputeBeta,
        Map<String, dynamic>>(data, (value) => value.toMap());
    map['message'] = message;
    return map;
  }

  factory RegionSslPolicyWarningsItemResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return RegionSslPolicyWarningsItemResponseComputeBeta(
      code: map['code'] as String,
      data: pulumi.Input.decodeList<
              RegionSslPolicyWarningsItemDataItemResponseComputeBeta>(
          map['data'],
          (value) =>
              RegionSslPolicyWarningsItemDataItemResponseComputeBeta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      message: map['message'] as String,
    );
  }
}
