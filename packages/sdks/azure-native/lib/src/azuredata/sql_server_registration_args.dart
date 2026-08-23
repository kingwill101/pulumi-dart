// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azuredata_sql_server_registration_args_doc}
/// The set of arguments for SqlServerRegistration.
/// {@endtemplate}
/// {@macro pulumi_azuredata_sql_server_registration_args_doc}
class SqlServerRegistrationArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Optional Properties as JSON string
  final pulumi.Input<String>? propertyBag;
  /// Resource Group Name
  final pulumi.Input<String>? resourceGroup;
  /// Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the SQL Server registration.
  final pulumi.Input<String>? sqlServerRegistrationName;
  /// Subscription Id
  final pulumi.Input<String>? subscriptionId;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SqlServerRegistrationArgs].
  /// [location] The geo-location where the resource lives
  /// [propertyBag] Optional Properties as JSON string
  /// [resourceGroup] Resource Group Name
  /// [resourceGroupName] Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [sqlServerRegistrationName] Name of the SQL Server registration.
  /// [subscriptionId] Subscription Id
  /// [tags] Resource tags.
  const SqlServerRegistrationArgs({
    this.location,
    this.propertyBag,
    this.resourceGroup,
    required this.resourceGroupName,
    this.sqlServerRegistrationName,
    this.subscriptionId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'propertyBag': ?propertyBag,
      'resourceGroup': ?resourceGroup,
      'resourceGroupName': resourceGroupName,
      'sqlServerRegistrationName': ?sqlServerRegistrationName,
      'subscriptionId': ?subscriptionId,
      'tags': ?tags,
    };
  }

  factory SqlServerRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return SqlServerRegistrationArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      propertyBag: (() { final guardedValue = map['propertyBag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroup: (() { final guardedValue = map['resourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sqlServerRegistrationName: (() { final guardedValue = map['sqlServerRegistrationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
