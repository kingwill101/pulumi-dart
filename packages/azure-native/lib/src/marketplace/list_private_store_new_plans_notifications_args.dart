// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_marketplace_list_private_store_new_plans_notifications_args_doc}
/// Arguments for listPrivateStoreNewPlansNotifications.
/// {@endtemplate}
/// {@macro pulumi_marketplace_list_private_store_new_plans_notifications_args_doc}
class ListPrivateStoreNewPlansNotificationsArgs {
  /// The store ID - must use the tenant ID
  final pulumi.Input<String> privateStoreId;

  /// Creates a new [ListPrivateStoreNewPlansNotificationsArgs].
  /// [privateStoreId] The store ID - must use the tenant ID
  ListPrivateStoreNewPlansNotificationsArgs({
    required String privateStoreId,
  }) :
      privateStoreId = pulumi.Input.asInput<String>(privateStoreId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateStoreId': privateStoreId,
    };
  }

  factory ListPrivateStoreNewPlansNotificationsArgs.fromMap(Map<String, dynamic> map) {
    return ListPrivateStoreNewPlansNotificationsArgs(
      privateStoreId: map['privateStoreId'] as String,
    );
  }
}

