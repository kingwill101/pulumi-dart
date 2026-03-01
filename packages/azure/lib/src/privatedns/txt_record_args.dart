// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'txt_record_record.dart';

/// {@template pulumi_privatedns_txt_record_txt_record_args_doc}
/// The set of arguments for TxtRecord.
/// {@endtemplate}
/// {@macro pulumi_privatedns_txt_record_txt_record_args_doc}
class TxtRecordArgs {
  /// The name of the DNS TXT Record. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `record` blocks as defined below.
  final pulumi.Input<List<TxtRecordRecord>> records;
  /// Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Time To Live (TTL) of the DNS record in seconds.
  final pulumi.Input<int> ttl;
  /// Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> zoneName;

  /// Creates a new [TxtRecordArgs].
  /// [name] The name of the DNS TXT Record. Changing this forces a new resource to be created.
  /// [records] One or more `record` blocks as defined below.
  /// [resourceGroupName] Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [ttl] The Time To Live (TTL) of the DNS record in seconds.
  /// [zoneName] Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created.
  TxtRecordArgs({
    String? name,
    required List<TxtRecordRecord> records,
    required String resourceGroupName,
    Map<String, String>? tags,
    required int ttl,
    required String zoneName,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      records = pulumi.Input.asInput<List<TxtRecordRecord>>(records),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      ttl = pulumi.Input.asInput<int>(ttl),
      zoneName = pulumi.Input.asInput<String>(zoneName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'records': pulumi.Input.mapInputValue<List<TxtRecordRecord>, List<Map<String, dynamic>>>(records, (value) => pulumi.Input.encodeList<TxtRecordRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'ttl': ttl,
      'zoneName': zoneName,
    };
  }

  factory TxtRecordArgs.fromMap(Map<String, dynamic> map) {
    return TxtRecordArgs(
      name: map['name'] == null ? null : map['name'] as String,
      records: pulumi.Input.decodeList<TxtRecordRecord>(map['records'], (value) => TxtRecordRecord.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      ttl: map['ttl'] as int,
      zoneName: map['zoneName'] as String,
    );
  }
}

