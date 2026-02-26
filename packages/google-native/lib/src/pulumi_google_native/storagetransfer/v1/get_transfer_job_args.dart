// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTransferJob.
class GetTransferJobArgs {
  final Input<String> projectId;
  final Input<String> transferJobId;

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
      projectId: Input.asInput<String>(map['projectId']),
      transferJobId: Input.asInput<String>(map['transferJobId']),
    );
  }
}
