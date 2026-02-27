// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFederation.
class GetFederationMetastoreV1alphaArgs {
  final pulumi.Input<String> federationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetFederationMetastoreV1alphaArgs({
    required this.federationId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['federationId'] = federationId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetFederationMetastoreV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetFederationMetastoreV1alphaArgs(
      federationId: pulumi.Input.asInput<String>(map['federationId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
