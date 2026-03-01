// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_record_set_args_doc}
/// Arguments for getRecordSet.
/// {@endtemplate}
/// {@macro pulumi_dns_get_record_set_args_doc}
class GetRecordSetArgs {
  /// The type of DNS record in this record set.
  final pulumi.Input<String> recordType;
  /// The name of the record set, relative to the name of the zone.
  final pulumi.Input<String> relativeRecordSetName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the DNS zone (without a terminating dot).
  final pulumi.Input<String> zoneName;

  /// Creates a new [GetRecordSetArgs].
  /// [recordType] The type of DNS record in this record set.
  /// [relativeRecordSetName] The name of the record set, relative to the name of the zone.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [zoneName] The name of the DNS zone (without a terminating dot).
  GetRecordSetArgs({
    required String recordType,
    required String relativeRecordSetName,
    required String resourceGroupName,
    required String zoneName,
  }) :
      recordType = pulumi.Input.asInput<String>(recordType),
      relativeRecordSetName = pulumi.Input.asInput<String>(relativeRecordSetName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      zoneName = pulumi.Input.asInput<String>(zoneName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recordType': recordType,
      'relativeRecordSetName': relativeRecordSetName,
      'resourceGroupName': resourceGroupName,
      'zoneName': zoneName,
    };
  }

  factory GetRecordSetArgs.fromMap(Map<String, dynamic> map) {
    return GetRecordSetArgs(
      recordType: map['recordType'] as String,
      relativeRecordSetName: map['relativeRecordSetName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      zoneName: map['zoneName'] as String,
    );
  }
}

