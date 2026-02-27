// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getAppGateway.
class GetAppGatewayArgs {
  final Input<String> appGatewayId;
  final Input<String> location;
  final Input<String>? project;

  GetAppGatewayArgs({
    required this.appGatewayId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appGatewayId'] = appGatewayId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAppGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetAppGatewayArgs(
      appGatewayId: Input.asInput<String>(map['appGatewayId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
