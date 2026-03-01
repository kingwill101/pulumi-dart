// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_ptr_record_ptr_record_args_doc}
/// The set of arguments for PtrRecord.
/// {@endtemplate}
/// {@macro pulumi_dns_ptr_record_ptr_record_args_doc}
class PtrRecordArgs {
  /// The name of the DNS PTR Record. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// List of Fully Qualified Domain Names.
  final pulumi.Input<List<String>> records;
  /// Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Time To Live (TTL) of the DNS record in seconds.
  final pulumi.Input<int> ttl;
  /// Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> zoneName;

  /// Creates a new [PtrRecordArgs].
  /// [name] The name of the DNS PTR Record. Changing this forces a new resource to be created.
  /// [records] List of Fully Qualified Domain Names.
  /// [resourceGroupName] Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [ttl] The Time To Live (TTL) of the DNS record in seconds.
  /// [zoneName] Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  PtrRecordArgs({
    String? name,
    required List<String> records,
    required String resourceGroupName,
    Map<String, String>? tags,
    required int ttl,
    required String zoneName,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      records = pulumi.Input.asInput<List<String>>(records),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      ttl = pulumi.Input.asInput<int>(ttl),
      zoneName = pulumi.Input.asInput<String>(zoneName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'records': records,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'ttl': ttl,
      'zoneName': zoneName,
    };
  }

  factory PtrRecordArgs.fromMap(Map<String, dynamic> map) {
    return PtrRecordArgs(
      name: map['name'] == null ? null : map['name'] as String,
      records: (map['records'] as List).cast<String>(),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      ttl: map['ttl'] as int,
      zoneName: map['zoneName'] as String,
    );
  }
}

