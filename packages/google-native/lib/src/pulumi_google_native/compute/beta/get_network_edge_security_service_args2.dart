// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNetworkEdgeSecurityService.
class GetNetworkEdgeSecurityServiceArgs2 {
  final Input<String> networkEdgeSecurityService;
  final Input<String>? project;
  final Input<String> region;

  GetNetworkEdgeSecurityServiceArgs2({
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

  factory GetNetworkEdgeSecurityServiceArgs2.fromMap(Map<String, dynamic> map) {
    return GetNetworkEdgeSecurityServiceArgs2(
      networkEdgeSecurityService:
          Input.asInput<String>(map['networkEdgeSecurityService']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
