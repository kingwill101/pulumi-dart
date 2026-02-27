// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTransferJob.
class GetTransferJobArgs {
  final pulumi.Input<String> projectId;
  final pulumi.Input<String> transferJobId;

  GetTransferJobArgs({
    required this.projectId,
    required this.transferJobId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['projectId'] = projectId;
    map['transferJobId'] = transferJobId;
    return map;
  }

  factory GetTransferJobArgs.fromMap(Map<String, dynamic> map) {
    return GetTransferJobArgs(
      projectId: pulumi.Input.asInput<String>(map['projectId']),
      transferJobId: pulumi.Input.asInput<String>(map['transferJobId']),
    );
  }
}
