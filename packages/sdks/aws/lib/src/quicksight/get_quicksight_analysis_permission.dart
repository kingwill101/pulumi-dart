// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetQuicksightAnalysisPermission {
  final pulumi.Input<List<String>> actions;
  final pulumi.Input<String> principal;

  /// Creates a new [GetQuicksightAnalysisPermission].
  /// [actions] Required.
  /// [principal] Required.
  GetQuicksightAnalysisPermission({
    required this.actions,
    required this.principal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'principal': principal,
    };
  }

  factory GetQuicksightAnalysisPermission.fromMap(Map<String, dynamic> map) {
    return GetQuicksightAnalysisPermission(
      actions: ((map['actions'] as List).cast<String>()).input(),
      principal: (map['principal'] as String).input(),
    );
  }
}

