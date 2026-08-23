// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'horizon_db_cluster_parameter_group_connection_properties_response.dart';
import 'network_response.dart';

/// Properties of a HorizonDB cluster.
class HorizonDbClusterPropertiesResponse {
  /// The administrator login name.
  final pulumi.Input<String> administratorLogin;
  /// The mode to create a new HorizonDB cluster.
  final pulumi.Input<String>? createMode;
  /// The fully qualified domain name of the cluster.
  final pulumi.Input<String> fullyQualifiedDomainName;
  /// The network related info.
  final pulumi.Input<NetworkResponse>? network;
  /// Defines connection to a parameter group.
  final pulumi.Input<HorizonDbClusterParameterGroupConnectionPropertiesResponse>? parameterGroup;
  /// Restore point creation time specifying the time to restore from.
  final pulumi.Input<String>? pointInTimeUTC;
  /// The pool name for restore or replica operations.
  final pulumi.Input<String>? poolName;
  /// The processor type for the HorizonDB cluster.
  final pulumi.Input<String>? processorType;
  /// The provisioning state of the cluster.
  final pulumi.Input<String> provisioningState;
  /// The fully qualified domain name used for readonly endpoint for the cluster.
  final pulumi.Input<String> readonlyEndpoint;
  /// Number of replicas.
  final pulumi.Input<int>? replicaCount;
  /// The source cluster resource ID for restore or replica creation.
  final pulumi.Input<String>? sourceClusterResourceId;
  /// Current state of the cluster.
  final pulumi.Input<String> state;
  /// Number of vCores.
  final pulumi.Input<int>? vCores;
  /// The version of the HorizonDB cluster.
  final pulumi.Input<String>? version;
  /// Defines how replicas are placed across availability zones.
  final pulumi.Input<String>? zonePlacementPolicy;

  /// Creates a new [HorizonDbClusterPropertiesResponse].
  /// [administratorLogin] The administrator login name.
  /// [createMode] The mode to create a new HorizonDB cluster.
  /// [fullyQualifiedDomainName] The fully qualified domain name of the cluster.
  /// [network] The network related info.
  /// [parameterGroup] Defines connection to a parameter group.
  /// [pointInTimeUTC] Restore point creation time specifying the time to restore from.
  /// [poolName] The pool name for restore or replica operations.
  /// [processorType] The processor type for the HorizonDB cluster.
  /// [provisioningState] The provisioning state of the cluster.
  /// [readonlyEndpoint] The fully qualified domain name used for readonly endpoint for the cluster.
  /// [replicaCount] Number of replicas.
  /// [sourceClusterResourceId] The source cluster resource ID for restore or replica creation.
  /// [state] Current state of the cluster.
  /// [vCores] Number of vCores.
  /// [version] The version of the HorizonDB cluster.
  /// [zonePlacementPolicy] Defines how replicas are placed across availability zones.
  const HorizonDbClusterPropertiesResponse({
    required this.administratorLogin,
    this.createMode,
    required this.fullyQualifiedDomainName,
    this.network,
    this.parameterGroup,
    this.pointInTimeUTC,
    this.poolName,
    this.processorType,
    required this.provisioningState,
    required this.readonlyEndpoint,
    this.replicaCount,
    this.sourceClusterResourceId,
    required this.state,
    this.vCores,
    this.version,
    this.zonePlacementPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': administratorLogin,
      'createMode': ?createMode,
      'fullyQualifiedDomainName': fullyQualifiedDomainName,
      'network': ?pulumi.Input.mapOptionalInputValue<NetworkResponse, Map<String, dynamic>>(network, (value) => value.toMap()),
      'parameterGroup': ?pulumi.Input.mapOptionalInputValue<HorizonDbClusterParameterGroupConnectionPropertiesResponse, Map<String, dynamic>>(parameterGroup, (value) => value.toMap()),
      'pointInTimeUTC': ?pointInTimeUTC,
      'poolName': ?poolName,
      'processorType': ?processorType,
      'provisioningState': provisioningState,
      'readonlyEndpoint': readonlyEndpoint,
      'replicaCount': ?replicaCount,
      'sourceClusterResourceId': ?sourceClusterResourceId,
      'state': state,
      'vCores': ?vCores,
      'version': ?version,
      'zonePlacementPolicy': ?zonePlacementPolicy,
    };
  }

  factory HorizonDbClusterPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HorizonDbClusterPropertiesResponse(
      administratorLogin: pulumi.Input.fromValue(map['administratorLogin'] as String),
      createMode: (() { final guardedValue = map['createMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fullyQualifiedDomainName: pulumi.Input.fromValue(map['fullyQualifiedDomainName'] as String),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parameterGroup: (() { final guardedValue = map['parameterGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HorizonDbClusterParameterGroupConnectionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pointInTimeUTC: (() { final guardedValue = map['pointInTimeUTC']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      poolName: (() { final guardedValue = map['poolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      processorType: (() { final guardedValue = map['processorType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      readonlyEndpoint: pulumi.Input.fromValue(map['readonlyEndpoint'] as String),
      replicaCount: (() { final guardedValue = map['replicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sourceClusterResourceId: (() { final guardedValue = map['sourceClusterResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: pulumi.Input.fromValue(map['state'] as String),
      vCores: (() { final guardedValue = map['vCores']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zonePlacementPolicy: (() { final guardedValue = map['zonePlacementPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
