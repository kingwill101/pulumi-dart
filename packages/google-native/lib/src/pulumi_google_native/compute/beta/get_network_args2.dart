// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNetwork.
class GetNetworkArgs2 {
  final Input<String> network;
  final Input<String>? project;

  GetNetworkArgs2({
    required this.network,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['network'] = network;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetNetworkArgs2.fromMap(Map<String, dynamic> map) {
    return GetNetworkArgs2(
      network: Input.asInput<String>(map['network']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
