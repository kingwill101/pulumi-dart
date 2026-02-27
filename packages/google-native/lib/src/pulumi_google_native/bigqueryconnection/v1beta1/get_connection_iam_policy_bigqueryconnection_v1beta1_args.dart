// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getConnectionIamPolicy.
class GetConnectionIamPolicyBigqueryconnectionV1beta1Args {
  final pulumi.Input<String> connectionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetConnectionIamPolicyBigqueryconnectionV1beta1Args({
    required this.connectionId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionId'] = connectionId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetConnectionIamPolicyBigqueryconnectionV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetConnectionIamPolicyBigqueryconnectionV1beta1Args(
      connectionId: pulumi.Input.asInput<String>(map['connectionId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
