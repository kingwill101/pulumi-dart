// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for VpcServiceControls.
class VpcServiceControlsArgs {
  /// Desired VPC Service Controls state service producer VPC network, as
  /// described at the top of this page.
  final Input<bool> enabled;

  /// The network that the consumer is using to connect with services.
  final Input<String> network;

  /// The id of the Google Cloud project containing the consumer network.
  final Input<String>? project;

  /// The service that is managing peering connectivity for a service
  /// producer's organization. For Google services that support this
  /// functionality, this value is `servicenetworking.googleapis.com`.
  final Input<String> service;

  VpcServiceControlsArgs({
    required this.enabled,
    required this.network,
    this.project,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['network'] = network;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['service'] = service;
    return map;
  }

  factory VpcServiceControlsArgs.fromMap(Map<String, dynamic> map) {
    return VpcServiceControlsArgs(
      enabled: Input.asInput<bool>(map['enabled']),
      network: Input.asInput<String>(map['network']),
      project: Input.asOptionalInput<String>(map['project']),
      service: Input.asInput<String>(map['service']),
    );
  }
}
