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
    required String accountName,
    String? location,
    ElasticSnapshotPolicyProperties? properties,
    required String resourceGroupName,
    String? snapshotPolicyName,
    Map<String, String>? tags,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<ElasticSnapshotPolicyProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      snapshotPolicyName = pulumi.Input.asOptionalInput<String>(snapshotPolicyName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      accountName: map['accountName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : ElasticSnapshotPolicyProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      snapshotPolicyName: map['snapshotPolicyName'] == null ? null : map['snapshotPolicyName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

