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
  final pulumi.Input<String>? trustedIdProviderName;

  /// Creates a new [TrustedIdProviderArgs].
  /// [accountName] The name of the Data Lake Store account.
  /// [idProvider] The URL of this trusted identity provider.
  /// [resourceGroupName] The name of the Azure resource group.
  /// [trustedIdProviderName] The name of the trusted identity provider. This is used for differentiation of providers in the account.
  TrustedIdProviderArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> idProvider,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? trustedIdProviderName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      idProvider = pulumi.Input.asInput<String>(idProvider),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      trustedIdProviderName = pulumi.Input.asOptionalInput<String>(trustedIdProviderName);

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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      idProvider: pulumi.Output.create<String>(map['idProvider'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      trustedIdProviderName: map['trustedIdProviderName'] == null ? null : pulumi.Output.create<String>(map['trustedIdProviderName'] as String),
    );
  }
}

