// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCase.
class GetCaseCloudsupportV2betaArgs {
  final pulumi.Input<String> caseId;
  final pulumi.Input<String> v2betaId1;
  final pulumi.Input<String> v2betumId;

  GetCaseCloudsupportV2betaArgs({
    required this.caseId,
    required this.v2betaId1,
    required this.v2betumId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caseId'] = caseId;
    map['v2betaId1'] = v2betaId1;
    map['v2betumId'] = v2betumId;
    return map;
  }

  factory GetCaseCloudsupportV2betaArgs.fromMap(Map<String, dynamic> map) {
    return GetCaseCloudsupportV2betaArgs(
      caseId: pulumi.Input.asInput<String>(map['caseId']),
      v2betaId1: pulumi.Input.asInput<String>(map['v2betaId1']),
      v2betumId: pulumi.Input.asInput<String>(map['v2betumId']),
    );
  }
}
