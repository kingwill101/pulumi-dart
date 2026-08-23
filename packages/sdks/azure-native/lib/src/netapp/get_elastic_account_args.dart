// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_elastic_account_args_doc}
/// Arguments for getElasticAccount.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_elastic_account_args_doc}
class GetElasticAccountArgs {
  /// The name of the ElasticAccount
  final pulumi.Input<String> accountName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetElasticAccountArgs].
  /// [accountName] The name of the ElasticAccount
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetElasticAccountArgs({
    required this.accountName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetElasticAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetElasticAccountArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
