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
  SqlServerRegistrationArgs({
    String? location,
    String? propertyBag,
    String? resourceGroup,
    required String resourceGroupName,
    String? sqlServerRegistrationName,
    String? subscriptionId,
    Map<String, String>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      propertyBag = pulumi.Input.asOptionalInput<String>(propertyBag),
      resourceGroup = pulumi.Input.asOptionalInput<String>(resourceGroup),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sqlServerRegistrationName = pulumi.Input.asOptionalInput<String>(sqlServerRegistrationName),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      location: map['location'] == null ? null : map['location'] as String,
      propertyBag: map['propertyBag'] == null ? null : map['propertyBag'] as String,
      resourceGroup: map['resourceGroup'] == null ? null : map['resourceGroup'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sqlServerRegistrationName: map['sqlServerRegistrationName'] == null ? null : map['sqlServerRegistrationName'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

