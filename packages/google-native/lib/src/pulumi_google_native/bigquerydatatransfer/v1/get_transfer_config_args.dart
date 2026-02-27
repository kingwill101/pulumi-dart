// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTransferConfig.
class GetTransferConfigArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> transferConfigId;

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
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      transferConfigId: pulumi.Input.asInput<String>(map['transferConfigId']),
    );
  }
}
