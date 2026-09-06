// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_backup_policy_properties.dart';

/// {@template pulumi_netapp_elastic_backup_policy_args_doc}
/// The set of arguments for ElasticBackupPolicy.
/// {@endtemplate}
/// {@macro pulumi_netapp_elastic_backup_policy_args_doc}
class ElasticBackupPolicyArgs {
  /// The name of the ElasticAccount
  final pulumi.Input<String> accountName;
  /// The name of the ElasticBackupPolicy
  final pulumi.Input<String?>? backupPolicyName;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<ElasticBackupPolicyProperties?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ElasticBackupPolicyArgs].
  /// [accountName] The name of the ElasticAccount
  /// [backupPolicyName] The name of the ElasticBackupPolicy
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const ElasticBackupPolicyArgs({
    required this.accountName,
    this.backupPolicyName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'backupPolicyName': ?backupPolicyName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<ElasticBackupPolicyProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ElasticBackupPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ElasticBackupPolicyArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      backupPolicyName: (() { final guardedValue = map['backupPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticBackupPolicyProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
