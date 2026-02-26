// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTransferProjectServieAccount.
class GetTransferProjectServieAccountArgs {
  /// The project ID. If it is not provided, the provider project is used.
  final Input<String>? project;

  GetTransferProjectServieAccountArgs({
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetTransferProjectServieAccountArgs.fromMap(
      Map<String, dynamic> map) {
    return GetTransferProjectServieAccountArgs(
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
