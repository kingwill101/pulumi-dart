// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datalakestore_get_trusted_id_provider_args_doc}
/// Arguments for getTrustedIdProvider.
/// {@endtemplate}
/// {@macro pulumi_datalakestore_get_trusted_id_provider_args_doc}
class GetTrustedIdProviderArgs {
  /// The name of the Data Lake Store account.
  final pulumi.Input<String> accountName;
  /// The name of the Azure resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the trusted identity provider to retrieve.
  final pulumi.Input<String> trustedIdProviderName;

  /// Creates a new [GetTrustedIdProviderArgs].
  /// [accountName] The name of the Data Lake Store account.
  /// [resourceGroupName] The name of the Azure resource group.
  /// [trustedIdProviderName] The name of the trusted identity provider to retrieve.
  GetTrustedIdProviderArgs({
    required this.accountName,
    required this.resourceGroupName,
    required this.trustedIdProviderName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
      'trustedIdProviderName': trustedIdProviderName,
    };
  }

  factory GetTrustedIdProviderArgs.fromMap(Map<String, dynamic> map) {
    return GetTrustedIdProviderArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      trustedIdProviderName: pulumi.Input.fromValue(map['trustedIdProviderName'] as String),
    );
  }
}

