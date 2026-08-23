// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appcomplianceautomation_list_provider_action_in_use_storage_accounts_args_doc}
/// Arguments for listProviderActionInUseStorageAccounts.
/// {@endtemplate}
/// {@macro pulumi_appcomplianceautomation_list_provider_action_in_use_storage_accounts_args_doc}
class ListProviderActionInUseStorageAccountsArgs {
  /// List of subscription ids to be query. If the list is null or empty, the API will query all the subscriptions of the user.
  final pulumi.Input<List<String>>? subscriptionIds;

  /// Creates a new [ListProviderActionInUseStorageAccountsArgs].
  /// [subscriptionIds] List of subscription ids to be query. If the list is null or empty, the API will query all the subscriptions of the user.
  const ListProviderActionInUseStorageAccountsArgs({
    this.subscriptionIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subscriptionIds': ?subscriptionIds,
    };
  }

  factory ListProviderActionInUseStorageAccountsArgs.fromMap(Map<String, dynamic> map) {
    return ListProviderActionInUseStorageAccountsArgs(
      subscriptionIds: (() { final guardedValue = map['subscriptionIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
