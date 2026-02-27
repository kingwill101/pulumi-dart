// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_record_set_response_dns_v1beta2.dart';

class ResponsePolicyRuleLocalDataResponseDnsV1beta2 {
  /// All resource record sets for this selector, one per resource record type. The name must match the dns_name.
  final List<ResourceRecordSetResponseDnsV1beta2> localDatas;

  ResponsePolicyRuleLocalDataResponseDnsV1beta2({
    required this.localDatas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['localDatas'] = pulumi.Input.encodeList<
        ResourceRecordSetResponseDnsV1beta2,
        Map<String, dynamic>>(localDatas, (value) => value.toMap());
    return map;
  }

  factory ResponsePolicyRuleLocalDataResponseDnsV1beta2.fromMap(
      Map<String, dynamic> map) {
    return ResponsePolicyRuleLocalDataResponseDnsV1beta2(
      localDatas: pulumi.Input.decodeList<ResourceRecordSetResponseDnsV1beta2>(
          map['localDatas'],
          (value) => ResourceRecordSetResponseDnsV1beta2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
