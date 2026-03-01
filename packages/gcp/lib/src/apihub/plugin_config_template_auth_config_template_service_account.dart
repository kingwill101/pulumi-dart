// ignore_for_file: unused_element, unnecessary_cast

class PluginConfigTemplateAuthConfigTemplateServiceAccount {
  /// The service account to be used for authenticating request.
  /// The `iam.serviceAccounts.getAccessToken` permission should be granted on
  /// this service account to the impersonator service account.
  final String serviceAccount;

  /// Creates a new [PluginConfigTemplateAuthConfigTemplateServiceAccount].
  /// [serviceAccount] The service account to be used for authenticating request.
  PluginConfigTemplateAuthConfigTemplateServiceAccount({
    required this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'serviceAccount': serviceAccount};
  }

  factory PluginConfigTemplateAuthConfigTemplateServiceAccount.fromMap(
    Map<String, dynamic> map,
  ) {
    return PluginConfigTemplateAuthConfigTemplateServiceAccount(
      serviceAccount: map['serviceAccount'] as String,
    );
  }
}
