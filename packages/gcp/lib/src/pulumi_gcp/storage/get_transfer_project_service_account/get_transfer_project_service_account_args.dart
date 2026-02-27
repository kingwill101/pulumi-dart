// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTransferProjectServiceAccount.
class GetTransferProjectServiceAccountArgs {
  /// The project ID. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GetTransferProjectServiceAccountArgs({
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

  factory GetTransferProjectServiceAccountArgs.fromMap(
      Map<String, dynamic> map) {
    return GetTransferProjectServiceAccountArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
