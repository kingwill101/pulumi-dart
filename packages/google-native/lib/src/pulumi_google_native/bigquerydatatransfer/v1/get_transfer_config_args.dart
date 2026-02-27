// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getTransferConfig.
class GetTransferConfigArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> transferConfigId;

  GetTransferConfigArgs({
    required this.location,
    this.project,
    required this.transferConfigId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['transferConfigId'] = transferConfigId;
    return map;
  }

  factory GetTransferConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetTransferConfigArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      transferConfigId: Input.asInput<String>(map['transferConfigId']),
    );
  }
}
