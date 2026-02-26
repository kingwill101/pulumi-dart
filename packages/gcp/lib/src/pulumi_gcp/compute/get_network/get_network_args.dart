// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNetwork.
class GetNetworkArgs {
  /// The name of the network.
  ///
  ///
  /// - - -
  final Input<String> name;

  /// A full or partial URL of the network profile to apply to this network.
  final Input<String>? networkProfile;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  GetNetworkArgs({
    required this.name,
    this.networkProfile,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final networkProfileValue = networkProfile;
    if (networkProfileValue != null) {
      map['networkProfile'] = networkProfileValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkArgs(
      name: Input.asInput<String>(map['name']),
      networkProfile: Input.asOptionalInput<String>(map['networkProfile']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
