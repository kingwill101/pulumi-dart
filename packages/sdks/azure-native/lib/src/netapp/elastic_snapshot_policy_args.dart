// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_snapshot_policy_properties.dart';

/// {@template pulumi_netapp_elastic_snapshot_policy_args_doc}
/// The set of arguments for ElasticSnapshotPolicy.
/// {@endtemplate}
/// {@macro pulumi_netapp_elastic_snapshot_policy_args_doc}
class ElasticSnapshotPolicyArgs {
  /// The name of the ElasticAccount
  final pulumi.Input<String> accountName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<ElasticSnapshotPolicyProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the ElasticSnapshotPolicy
  final pulumi.Input<String>? snapshotPolicyName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ElasticSnapshotPolicyArgs].
  /// [accountName] The name of the ElasticAccount
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [snapshotPolicyName] The name of the ElasticSnapshotPolicy
  /// [tags] Resource tags.
  ElasticSnapshotPolicyArgs({
    required this.accountName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.snapshotPolicyName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<ElasticSnapshotPolicyProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'snapshotPolicyName': ?snapshotPolicyName,
      'tags': ?tags,
    };
  }

  factory ElasticSnapshotPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ElasticSnapshotPolicyArgs(
      accountName: (map['accountName'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: map['properties'] == null ? null : (ElasticSnapshotPolicyProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      snapshotPolicyName: map['snapshotPolicyName'] == null ? null : (map['snapshotPolicyName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

