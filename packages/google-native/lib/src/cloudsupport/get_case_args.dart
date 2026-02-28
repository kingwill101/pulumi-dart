// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudsupport_v2_get_case_args_doc}
/// Arguments for getCase.
/// {@endtemplate}
/// {@macro pulumi_cloudsupport_v2_get_case_args_doc}
class GetCaseArgs {
  final pulumi.Input<String> caseId;
  final pulumi.Input<String> v2Id;
  final pulumi.Input<String> v2Id1;

  /// Creates a new [GetCaseArgs].
  /// [caseId] Required.
  /// [v2Id] Required.
  /// [v2Id1] Required.
  GetCaseArgs({
    required String caseId,
    required String v2Id,
    required String v2Id1,
  })  : caseId = pulumi.Input.asInput<String>(caseId),
        v2Id = pulumi.Input.asInput<String>(v2Id),
        v2Id1 = pulumi.Input.asInput<String>(v2Id1);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caseId'] = caseId;
    map['v2Id'] = v2Id;
    map['v2Id1'] = v2Id1;
    return map;
  }

  factory GetCaseArgs.fromMap(Map<String, dynamic> map) {
    return GetCaseArgs(
      caseId: map['caseId'] as String,
      v2Id: map['v2Id'] as String,
      v2Id1: map['v2Id1'] as String,
    );
  }
}
