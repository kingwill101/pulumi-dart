// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_mx_record_get_mx_record_args_doc}
/// Arguments for getMxRecord.
/// {@endtemplate}
/// {@macro pulumi_dns_get_mx_record_get_mx_record_args_doc}
class GetMxRecordArgs {
  /// The name of the DNS MX Record.
  final pulumi.Input<String>? name;
  /// Specifies the resource group where the DNS Zone (parent resource) exists.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the DNS Zone where the resource exists.
  final pulumi.Input<String> zoneName;

  /// Creates a new [GetMxRecordArgs].
  /// [name] The name of the DNS MX Record.
  /// [resourceGroupName] Specifies the resource group where the DNS Zone (parent resource) exists.
  /// [zoneName] Specifies the DNS Zone where the resource exists.
  GetMxRecordArgs({
    String? name,
    required String resourceGroupName,
    required String zoneName,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      zoneName = pulumi.Input.asInput<String>(zoneName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'zoneName': zoneName,
    };
  }

  factory GetMxRecordArgs.fromMap(Map<String, dynamic> map) {
    return GetMxRecordArgs(
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      zoneName: map['zoneName'] as String,
    );
  }
}

