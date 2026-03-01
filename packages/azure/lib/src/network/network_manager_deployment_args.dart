// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_manager_deployment_network_manager_deployment_args_doc}
/// The set of arguments for NetworkManagerDeployment.
/// {@endtemplate}
/// {@macro pulumi_network_network_manager_deployment_network_manager_deployment_args_doc}
class NetworkManagerDeploymentArgs {
  /// A list of Network Manager Configuration IDs which should be aligned with `scope_access`.
  final pulumi.Input<List<String>> configurationIds;
  /// Specifies the location which the configurations will be deployed to. Changing this forces a new Network Manager Deployment to be created.
  final pulumi.Input<String>? location;
  /// Specifies the ID of the Network Manager. Changing this forces a new Network Manager Deployment to be created.
  final pulumi.Input<String> networkManagerId;
  /// Specifies the configuration deployment type. Possible values are `Connectivity`, `SecurityAdmin` and `Routing`. Changing this forces a new Network Manager Deployment to be created.
  final pulumi.Input<String> scopeAccess;
  /// A mapping of key values pairs that can be used to keep the deployment up with the Network Manager configurations and rules.
  final pulumi.Input<Map<String, String>>? triggers;

  /// Creates a new [NetworkManagerDeploymentArgs].
  /// [configurationIds] A list of Network Manager Configuration IDs which should be aligned with `scope_access`.
  /// [location] Specifies the location which the configurations will be deployed to. Changing this forces a new Network Manager Deployment to be created.
  /// [networkManagerId] Specifies the ID of the Network Manager. Changing this forces a new Network Manager Deployment to be created.
  /// [scopeAccess] Specifies the configuration deployment type. Possible values are `Connectivity`, `SecurityAdmin` and `Routing`. Changing this forces a new Network Manager Deployment to be created.
  /// [triggers] A mapping of key values pairs that can be used to keep the deployment up with the Network Manager configurations and rules.
  NetworkManagerDeploymentArgs({
    required List<String> configurationIds,
    String? location,
    required String networkManagerId,
    required String scopeAccess,
    Map<String, String>? triggers,
  }) :
      configurationIds = pulumi.Input.asInput<List<String>>(configurationIds),
      location = pulumi.Input.asOptionalInput<String>(location),
      networkManagerId = pulumi.Input.asInput<String>(networkManagerId),
      scopeAccess = pulumi.Input.asInput<String>(scopeAccess),
      triggers = pulumi.Input.asOptionalInput<Map<String, String>>(triggers);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationIds': configurationIds,
      'location': ?location,
      'networkManagerId': networkManagerId,
      'scopeAccess': scopeAccess,
      'triggers': ?triggers,
    };
  }

  factory NetworkManagerDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return NetworkManagerDeploymentArgs(
      configurationIds: (map['configurationIds'] as List).cast<String>(),
      location: map['location'] == null ? null : map['location'] as String,
      networkManagerId: map['networkManagerId'] as String,
      scopeAccess: map['scopeAccess'] as String,
      triggers: map['triggers'] == null ? null : (map['triggers'] as Map).cast<String, String>(),
    );
  }
}

