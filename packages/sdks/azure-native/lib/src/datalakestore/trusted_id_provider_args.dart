// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datalakestore_trusted_id_provider_args_doc}
/// The set of arguments for TrustedIdProvider.
/// {@endtemplate}
/// {@macro pulumi_datalakestore_trusted_id_provider_args_doc}
class TrustedIdProviderArgs {
  /// The name of the Data Lake Store account.
  final pulumi.Input<String> accountName;
  /// The URL of this trusted identity provider.
  final pulumi.Input<String> idProvider;
  /// The name of the Azure resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the trusted identity provider. This is used for differentiation of providers in the account.
  final pulumi.Input<String?>? trustedIdProviderName;

  /// Creates a new [TrustedIdProviderArgs].
  /// [accountName] The name of the Data Lake Store account.
  /// [idProvider] The URL of this trusted identity provider.
  /// [resourceGroupName] The name of the Azure resource group.
  /// [trustedIdProviderName] The name of the trusted identity provider. This is used for differentiation of providers in the account.
  const TrustedIdProviderArgs({
    required this.accountName,
    required this.idProvider,
    required this.resourceGroupName,
    this.trustedIdProviderName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'idProvider': idProvider,
      'resourceGroupName': resourceGroupName,
      'trustedIdProviderName': ?trustedIdProviderName,
    };
  }

  factory TrustedIdProviderArgs.fromMap(Map<String, dynamic> map) {
    return TrustedIdProviderArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      idProvider: pulumi.Input.fromValue(map['idProvider'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      trustedIdProviderName: (() { final guardedValue = map['trustedIdProviderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
