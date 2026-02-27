// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNetworkEdgeSecurityService.
class GetNetworkEdgeSecurityServiceComputeV1Args {
  final pulumi.Input<String> networkEdgeSecurityService;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  GetNetworkEdgeSecurityServiceComputeV1Args({
    required this.networkEdgeSecurityService,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['networkEdgeSecurityService'] = networkEdgeSecurityService;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetNetworkEdgeSecurityServiceComputeV1Args.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkEdgeSecurityServiceComputeV1Args(
      networkEdgeSecurityService:
          pulumi.Input.asInput<String>(map['networkEdgeSecurityService']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
    );
  }
}
