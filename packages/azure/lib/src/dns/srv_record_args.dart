// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'srv_record_record.dart';

/// {@template pulumi_dns_srv_record_srv_record_args_doc}
/// The set of arguments for SrvRecord.
/// {@endtemplate}
/// {@macro pulumi_dns_srv_record_srv_record_args_doc}
class SrvRecordArgs {
  /// The name of the DNS SRV Record. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A list of values that make up the SRV record. Each `record` block supports fields documented below.
  final pulumi.Input<List<SrvRecordRecord>> records;
  /// Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Time To Live (TTL) of the DNS record in seconds.
  final pulumi.Input<int> ttl;
  /// Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> zoneName;

  /// Creates a new [SrvRecordArgs].
  /// [name] The name of the DNS SRV Record. Changing this forces a new resource to be created.
  /// [records] A list of values that make up the SRV record. Each `record` block supports fields documented below.
  /// [resourceGroupName] Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [ttl] The Time To Live (TTL) of the DNS record in seconds.
  /// [zoneName] Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  SrvRecordArgs({
    String? name,
    required List<SrvRecordRecord> records,
    required String resourceGroupName,
    Map<String, String>? tags,
    required int ttl,
    required String zoneName,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      records = pulumi.Input.asInput<List<SrvRecordRecord>>(records),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      ttl = pulumi.Input.asInput<int>(ttl),
      zoneName = pulumi.Input.asInput<String>(zoneName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'records': pulumi.Input.mapInputValue<List<SrvRecordRecord>, List<Map<String, dynamic>>>(records, (value) => pulumi.Input.encodeList<SrvRecordRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'ttl': ttl,
      'zoneName': zoneName,
    };
  }

  factory SrvRecordArgs.fromMap(Map<String, dynamic> map) {
    return SrvRecordArgs(
      name: map['name'] == null ? null : map['name'] as String,
      records: pulumi.Input.decodeList<SrvRecordRecord>(map['records'], (value) => SrvRecordRecord.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      ttl: map['ttl'] as int,
      zoneName: map['zoneName'] as String,
    );
  }
}

