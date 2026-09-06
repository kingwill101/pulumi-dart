// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'horizon_db_cluster_parameter_group_connection_properties.dart';

/// Properties of a HorizonDB cluster.
class HorizonDbClusterProperties {
  /// The administrator login name.
  final pulumi.Input<String> administratorLogin;
  /// The administrator login password.
  final pulumi.Input<String?>? administratorLoginPassword;
  /// The mode to create a new HorizonDB cluster.
  final pulumi.Input<dynamic>? createMode;
  /// Defines connection to a parameter group.
  final pulumi.Input<HorizonDbClusterParameterGroupConnectionProperties?>? parameterGroup;
  /// Restore point creation time specifying the time to restore from.
  final pulumi.Input<String?>? pointInTimeUTC;
  /// The pool name for restore or replica operations.
  final pulumi.Input<String?>? poolName;
  /// The processor type for the HorizonDB cluster.
  final pulumi.Input<String?>? processorType;
  /// Number of replicas.
  final pulumi.Input<int?>? replicaCount;
  /// The source cluster resource ID for restore or replica creation.
  final pulumi.Input<String?>? sourceClusterResourceId;
  /// Number of vCores.
  final pulumi.Input<int?>? vCores;
  /// The version of the HorizonDB cluster.
  final pulumi.Input<String?>? version;
  /// Defines how replicas are placed across availability zones.
  final pulumi.Input<dynamic>? zonePlacementPolicy;

  /// Creates a new [HorizonDbClusterProperties].
  /// [administratorLogin] The administrator login name.
  /// [administratorLoginPassword] The administrator login password.
  /// [createMode] The mode to create a new HorizonDB cluster.
  /// [parameterGroup] Defines connection to a parameter group.
  /// [pointInTimeUTC] Restore point creation time specifying the time to restore from.
  /// [poolName] The pool name for restore or replica operations.
  /// [processorType] The processor type for the HorizonDB cluster.
  /// [replicaCount] Number of replicas.
  /// [sourceClusterResourceId] The source cluster resource ID for restore or replica creation.
  /// [vCores] Number of vCores.
  /// [version] The version of the HorizonDB cluster.
  /// [zonePlacementPolicy] Defines how replicas are placed across availability zones.
  const HorizonDbClusterProperties({
    required this.administratorLogin,
    this.administratorLoginPassword,
    this.createMode,
    this.parameterGroup,
    this.pointInTimeUTC,
    this.poolName,
    this.processorType,
    this.replicaCount,
    this.sourceClusterResourceId,
    this.vCores,
    this.version,
    this.zonePlacementPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': administratorLogin,
      'administratorLoginPassword': ?administratorLoginPassword,
      'createMode': ?createMode,
      'parameterGroup': ?pulumi.Input.mapOptionalInputValue<HorizonDbClusterParameterGroupConnectionProperties, Map<String, dynamic>>(parameterGroup, (value) => value.toMap()),
      'pointInTimeUTC': ?pointInTimeUTC,
      'poolName': ?poolName,
      'processorType': ?processorType,
      'replicaCount': ?replicaCount,
      'sourceClusterResourceId': ?sourceClusterResourceId,
      'vCores': ?vCores,
      'version': ?version,
      'zonePlacementPolicy': ?zonePlacementPolicy,
    };
  }

  factory HorizonDbClusterProperties.fromMap(Map<String, dynamic> map) {
    return HorizonDbClusterProperties(
      administratorLogin: pulumi.Input.fromValue(map['administratorLogin'] as String),
      administratorLoginPassword: (() { final guardedValue = map['administratorLoginPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createMode: (() { final guardedValue = map['createMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      parameterGroup: (() { final guardedValue = map['parameterGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HorizonDbClusterParameterGroupConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pointInTimeUTC: (() { final guardedValue = map['pointInTimeUTC']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      poolName: (() { final guardedValue = map['poolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      processorType: (() { final guardedValue = map['processorType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicaCount: (() { final guardedValue = map['replicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      sourceClusterResourceId: (() { final guardedValue = map['sourceClusterResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vCores: (() { final guardedValue = map['vCores']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zonePlacementPolicy: (() { final guardedValue = map['zonePlacementPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
