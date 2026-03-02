// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_marketplace_list_private_store_subscriptions_context_args_doc}
/// Arguments for listPrivateStoreSubscriptionsContext.
/// {@endtemplate}
/// {@macro pulumi_marketplace_list_private_store_subscriptions_context_args_doc}
class ListPrivateStoreSubscriptionsContextArgs {
  /// The store ID - must use the tenant ID
  final pulumi.Input<String> privateStoreId;

  /// Creates a new [ListPrivateStoreSubscriptionsContextArgs].
  /// [privateStoreId] The store ID - must use the tenant ID
  ListPrivateStoreSubscriptionsContextArgs({
    required this.privateStoreId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateStoreId': privateStoreId,
    };
  }

  factory ListPrivateStoreSubscriptionsContextArgs.fromMap(Map<String, dynamic> map) {
    return ListPrivateStoreSubscriptionsContextArgs(
      privateStoreId: (map['privateStoreId'] as String).input(),
    );
  }
}

