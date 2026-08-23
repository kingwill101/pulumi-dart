// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_marketplace_list_private_store_stop_sell_offers_plans_notifications_args_doc}
/// Arguments for listPrivateStoreStopSellOffersPlansNotifications.
/// {@endtemplate}
/// {@macro pulumi_marketplace_list_private_store_stop_sell_offers_plans_notifications_args_doc}
class ListPrivateStoreStopSellOffersPlansNotificationsArgs {
  /// The store ID - must use the tenant ID
  final pulumi.Input<String> privateStoreId;
  final pulumi.Input<List<String>>? subscriptions;

  /// Creates a new [ListPrivateStoreStopSellOffersPlansNotificationsArgs].
  /// [privateStoreId] The store ID - must use the tenant ID
  /// [subscriptions] Optional.
  const ListPrivateStoreStopSellOffersPlansNotificationsArgs({
    required this.privateStoreId,
    this.subscriptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateStoreId': privateStoreId,
      'subscriptions': ?subscriptions,
    };
  }

  factory ListPrivateStoreStopSellOffersPlansNotificationsArgs.fromMap(Map<String, dynamic> map) {
    return ListPrivateStoreStopSellOffersPlansNotificationsArgs(
      privateStoreId: pulumi.Input.fromValue(map['privateStoreId'] as String),
      subscriptions: (() { final guardedValue = map['subscriptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
