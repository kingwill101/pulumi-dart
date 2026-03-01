// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_a_record_arecord_args_doc}
/// The set of arguments for ARecord.
/// {@endtemplate}
/// {@macro pulumi_dns_a_record_arecord_args_doc}
class ARecordArgs {
  /// The name of the DNS A Record. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// List of IPv4 Addresses. Conflicts with `target_resource_id`.
  final pulumi.Input<List<String>>? records;
  /// Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  ///
  /// > **Note:** either `records` OR `target_resource_id` must be specified, but not both.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Azure resource id of the target object. Conflicts with `records`.
  final pulumi.Input<String>? targetResourceId;
  /// The Time To Live (TTL) of the DNS record in seconds.
  final pulumi.Input<int> ttl;
  /// Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The `zone_name` should be the name of resource `azure.dns.Zone` instead of `azure.privatedns.Zone`.
  final pulumi.Input<String> zoneName;

  /// Creates a new [ARecordArgs].
  /// [name] The name of the DNS A Record. Changing this forces a new resource to be created.
  /// [records] List of IPv4 Addresses. Conflicts with `target_resource_id`.
  /// [resourceGroupName] Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [targetResourceId] The Azure resource id of the target object. Conflicts with `records`.
  /// [ttl] The Time To Live (TTL) of the DNS record in seconds.
  /// [zoneName] Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  ARecordArgs({
    String? name,
    List<String>? records,
    required String resourceGroupName,
    Map<String, String>? tags,
    String? targetResourceId,
    required int ttl,
    required String zoneName,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      records = pulumi.Input.asOptionalInput<List<String>>(records),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetResourceId = pulumi.Input.asOptionalInput<String>(targetResourceId),
      ttl = pulumi.Input.asInput<int>(ttl),
      zoneName = pulumi.Input.asInput<String>(zoneName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'records': ?records,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'targetResourceId': ?targetResourceId,
      'ttl': ttl,
      'zoneName': zoneName,
    };
  }

  factory ARecordArgs.fromMap(Map<String, dynamic> map) {
    return ARecordArgs(
      name: map['name'] == null ? null : map['name'] as String,
      records: map['records'] == null ? null : (map['records'] as List).cast<String>(),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      targetResourceId: map['targetResourceId'] == null ? null : map['targetResourceId'] as String,
      ttl: map['ttl'] as int,
      zoneName: map['zoneName'] as String,
    );
  }
}

