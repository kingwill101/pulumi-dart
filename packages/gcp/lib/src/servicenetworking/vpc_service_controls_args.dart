// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicenetworking_vpc_service_controls_vpc_service_controls_args_doc}
/// The set of arguments for VpcServiceControls.
/// {@endtemplate}
/// {@macro pulumi_servicenetworking_vpc_service_controls_vpc_service_controls_args_doc}
class VpcServiceControlsArgs {
  /// Desired VPC Service Controls state service producer VPC network, as
  /// described at the top of this page.
  final pulumi.Input<bool> enabled;
  /// The network that the consumer is using to connect with services.
  final pulumi.Input<String> network;
  /// The id of the Google Cloud project containing the consumer network.
  final pulumi.Input<String>? project;
  /// The service that is managing peering connectivity for a service
  /// producer's organization. For Google services that support this
  /// functionality, this value is `servicenetworking.googleapis.com`.
  final pulumi.Input<String> service;

  /// Creates a new [VpcServiceControlsArgs].
  /// [enabled] Desired VPC Service Controls state service producer VPC network, as
  /// [network] The network that the consumer is using to connect with services.
  /// [project] The id of the Google Cloud project containing the consumer network.
  /// [service] The service that is managing peering connectivity for a service
  VpcServiceControlsArgs({
    required bool enabled,
    required String network,
    String? project,
    required String service,
  }) :
      enabled = pulumi.Input.asInput<bool>(enabled),
      network = pulumi.Input.asInput<String>(network),
      project = pulumi.Input.asOptionalInput<String>(project),
      service = pulumi.Input.asInput<String>(service);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'network': network,
      'project': ?project,
      'service': service,
    };
  }

  factory VpcServiceControlsArgs.fromMap(Map<String, dynamic> map) {
    return VpcServiceControlsArgs(
      enabled: map['enabled'] as bool,
      network: map['network'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      service: map['service'] as String,
    );
  }
}

