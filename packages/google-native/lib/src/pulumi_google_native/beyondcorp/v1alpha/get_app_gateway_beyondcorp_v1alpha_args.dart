// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAppGateway.
class GetAppGatewayBeyondcorpV1alphaArgs {
  final pulumi.Input<String> appGatewayId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetAppGatewayBeyondcorpV1alphaArgs({
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

  factory GetAppGatewayBeyondcorpV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetAppGatewayBeyondcorpV1alphaArgs(
      appGatewayId: pulumi.Input.asInput<String>(map['appGatewayId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
