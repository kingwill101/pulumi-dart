// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getClientTlsPolicy.
class GetClientTlsPolicyNetworksecurityV1beta1Args {
  final pulumi.Input<String> clientTlsPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetClientTlsPolicyNetworksecurityV1beta1Args({
    required this.clientTlsPolicyId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientTlsPolicyId'] = clientTlsPolicyId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetClientTlsPolicyNetworksecurityV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetClientTlsPolicyNetworksecurityV1beta1Args(
      clientTlsPolicyId: pulumi.Input.asInput<String>(map['clientTlsPolicyId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
