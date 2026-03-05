// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataSetPermission {
  final pulumi.Input<List<String>> actions;
  final pulumi.Input<String> principal;

  /// Creates a new [GetDataSetPermission].
  /// [actions] Required.
  /// [principal] Required.
  GetDataSetPermission({
    required this.actions,
    required this.principal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'principal': principal,
    };
  }

  factory GetDataSetPermission.fromMap(Map<String, dynamic> map) {
    return GetDataSetPermission(
      actions: pulumi.Input.fromValue((map['actions'] as List).cast<String>()),
      principal: pulumi.Input.fromValue(map['principal'] as String),
    );
  }
}

