// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleetspace_account_properties_global_database_account_properties.dart';

/// {@template pulumi_cosmosdb_fleetspace_account_args_doc}
/// The set of arguments for FleetspaceAccount.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_fleetspace_account_args_doc}
class FleetspaceAccountArgs {
  /// Cosmos DB fleet name. Needs to be unique under a subscription.
  final pulumi.Input<String> fleetName;
  /// Cosmos DB fleetspace account name.
  final pulumi.Input<String>? fleetspaceAccountName;
  /// Cosmos DB fleetspace name. Needs to be unique under a fleet.
  final pulumi.Input<String> fleetspaceName;
  /// Configuration for fleetspace Account in the fleetspace.
  final pulumi.Input<FleetspaceAccountPropertiesGlobalDatabaseAccountProperties>? globalDatabaseAccountProperties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [FleetspaceAccountArgs].
  /// [fleetName] Cosmos DB fleet name. Needs to be unique under a subscription.
  /// [fleetspaceAccountName] Cosmos DB fleetspace account name.
  /// [fleetspaceName] Cosmos DB fleetspace name. Needs to be unique under a fleet.
  /// [globalDatabaseAccountProperties] Configuration for fleetspace Account in the fleetspace.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  FleetspaceAccountArgs({
    required this.fleetName,
    this.fleetspaceAccountName,
    required this.fleetspaceName,
    this.globalDatabaseAccountProperties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetName': fleetName,
      'fleetspaceAccountName': ?fleetspaceAccountName,
      'fleetspaceName': fleetspaceName,
      'globalDatabaseAccountProperties': ?pulumi.Input.mapOptionalInputValue<FleetspaceAccountPropertiesGlobalDatabaseAccountProperties, Map<String, dynamic>>(globalDatabaseAccountProperties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory FleetspaceAccountArgs.fromMap(Map<String, dynamic> map) {
    return FleetspaceAccountArgs(
      fleetName: pulumi.Input.fromValue(map['fleetName'] as String),
      fleetspaceAccountName: (() { final guardedValue = map['fleetspaceAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fleetspaceName: pulumi.Input.fromValue(map['fleetspaceName'] as String),
      globalDatabaseAccountProperties: (() { final guardedValue = map['globalDatabaseAccountProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FleetspaceAccountPropertiesGlobalDatabaseAccountProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

