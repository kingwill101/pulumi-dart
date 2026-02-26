// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'resource_record_set_response2.dart';

class ResponsePolicyRuleLocalDataResponse2 {
  /// All resource record sets for this selector, one per resource record type. The name must match the dns_name.
  final List<ResourceRecordSetResponse2> localDatas;

  ResponsePolicyRuleLocalDataResponse2({
    required this.localDatas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['localDatas'] =
        Input.encodeList<ResourceRecordSetResponse2, Map<String, dynamic>>(
            localDatas, (value) => value.toMap());
    return map;
  }

  factory ResponsePolicyRuleLocalDataResponse2.fromMap(
      Map<String, dynamic> map) {
    return ResponsePolicyRuleLocalDataResponse2(
      localDatas: Input.decodeList<ResourceRecordSetResponse2>(
          map['localDatas'],
          (value) => ResourceRecordSetResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
