// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNetworkPeering.
class GetNetworkPeeringArgs2 {
  /// Name of the resource.
  final Input<String> name;
  final Input<String>? project;

  GetNetworkPeeringArgs2({
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetNetworkPeeringArgs2.fromMap(Map<String, dynamic> map) {
    return GetNetworkPeeringArgs2(
      name: Input.asInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
