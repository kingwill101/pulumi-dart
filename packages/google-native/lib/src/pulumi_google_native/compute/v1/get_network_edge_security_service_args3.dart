// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getNetworkEdgeSecurityService.
class GetNetworkEdgeSecurityServiceArgs3 {
  final Input<String> networkEdgeSecurityService;
  final Input<String>? project;
  final Input<String> region;

  GetNetworkEdgeSecurityServiceArgs3({
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

  factory GetNetworkEdgeSecurityServiceArgs3.fromMap(Map<String, dynamic> map) {
    return GetNetworkEdgeSecurityServiceArgs3(
      networkEdgeSecurityService:
          Input.asInput<String>(map['networkEdgeSecurityService']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
