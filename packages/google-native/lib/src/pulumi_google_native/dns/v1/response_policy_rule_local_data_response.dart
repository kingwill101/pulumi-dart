// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_record_set_response.dart';

class ResponsePolicyRuleLocalDataResponse {
  /// All resource record sets for this selector, one per resource record type. The name must match the dns_name.
  final List<ResourceRecordSetResponse> localDatas;

  ResponsePolicyRuleLocalDataResponse({
    required this.localDatas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['localDatas'] = pulumi.Input.encodeList<ResourceRecordSetResponse,
        Map<String, dynamic>>(localDatas, (value) => value.toMap());
    return map;
  }

  factory ResponsePolicyRuleLocalDataResponse.fromMap(
      Map<String, dynamic> map) {
    return ResponsePolicyRuleLocalDataResponse(
      localDatas: pulumi.Input.decodeList<ResourceRecordSetResponse>(
          map['localDatas'],
          (value) => ResourceRecordSetResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
