// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_ssl_policy_warnings_item_data_item_response_compute_v1.dart';

class RegionSslPolicyWarningsItemResponseComputeV1 {
  /// A warning code, if applicable. For example, Compute Engine returns NO_RESULTS_ON_PAGE if there are no results in the response.
  final String code;

  /// Metadata about this warning in key: value format. For example: "data": [ { "key": "scope", "value": "zones/us-east1-d" }
  final List<RegionSslPolicyWarningsItemDataItemResponseComputeV1> data;

  /// A human-readable description of the warning code.
  final String message;

  RegionSslPolicyWarningsItemResponseComputeV1({
    required this.code,
    required this.data,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['data'] = pulumi.Input.encodeList<
        RegionSslPolicyWarningsItemDataItemResponseComputeV1,
        Map<String, dynamic>>(data, (value) => value.toMap());
    map['message'] = message;
    return map;
  }

  factory RegionSslPolicyWarningsItemResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return RegionSslPolicyWarningsItemResponseComputeV1(
      code: map['code'] as String,
      data: pulumi.Input.decodeList<
              RegionSslPolicyWarningsItemDataItemResponseComputeV1>(
          map['data'],
          (value) =>
              RegionSslPolicyWarningsItemDataItemResponseComputeV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      message: map['message'] as String,
    );
  }
}
