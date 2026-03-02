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
  final pulumi.Input<String>? backupPolicyName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<ElasticBackupPolicyProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ElasticBackupPolicyArgs].
  /// [accountName] The name of the ElasticAccount
  /// [backupPolicyName] The name of the ElasticBackupPolicy
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  ElasticBackupPolicyArgs({
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
      accountName: (map['accountName'] as String).input(),
      backupPolicyName: map['backupPolicyName'] == null ? null : (map['backupPolicyName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      properties: map['properties'] == null ? null : (ElasticBackupPolicyProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

