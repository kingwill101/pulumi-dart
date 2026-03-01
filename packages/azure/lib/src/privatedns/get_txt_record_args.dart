// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatedns_get_txt_record_get_txt_record_args_doc}
/// Arguments for getTxtRecord.
/// {@endtemplate}
/// {@macro pulumi_privatedns_get_txt_record_get_txt_record_args_doc}
class GetTxtRecordArgs {
  /// The name of the Private DNS TXT Record.
  final pulumi.Input<String> name;
  /// Specifies the resource group where the Private DNS Zone (parent resource) exists.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the Private DNS Zone where the resource exists.
  final pulumi.Input<String> zoneName;

  /// Creates a new [GetTxtRecordArgs].
  /// [name] The name of the Private DNS TXT Record.
  /// [resourceGroupName] Specifies the resource group where the Private DNS Zone (parent resource) exists.
  /// [zoneName] Specifies the Private DNS Zone where the resource exists.
  GetTxtRecordArgs({
    required String name,
    required String resourceGroupName,
    required String zoneName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      zoneName = pulumi.Input.asInput<String>(zoneName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'zoneName': zoneName,
    };
  }

  factory GetTxtRecordArgs.fromMap(Map<String, dynamic> map) {
    return GetTxtRecordArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      zoneName: map['zoneName'] as String,
    );
  }
}

