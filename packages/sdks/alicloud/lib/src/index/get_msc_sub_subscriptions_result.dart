// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_msc_sub_subscriptions_subscription.dart';

/// Result data returned by getMscSubSubscriptions.
class GetMscSubSubscriptionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? outputFile;
  /// A list of Msc Sub Subscriptions. Each element contains the following attributes:
  final List<GetMscSubSubscriptionsSubscription> subscriptions;

  /// Creates a new [GetMscSubSubscriptionsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [outputFile] Optional.
  /// [subscriptions] A list of Msc Sub Subscriptions. Each element contains the following attributes:
  GetMscSubSubscriptionsResult({
    required this.id,
    this.outputFile,
    required this.subscriptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'outputFile': ?outputFile,
      'subscriptions': pulumi.Input.encodeList<GetMscSubSubscriptionsSubscription, Map<String, dynamic>>(subscriptions, (value) => value.toMap()),
    };
  }

  factory GetMscSubSubscriptionsResult.fromMap(Map<String, dynamic> map) {
    return GetMscSubSubscriptionsResult(
      id: map['id'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      subscriptions: pulumi.Input.decodeList<GetMscSubSubscriptionsSubscription>(map['subscriptions'], (value) => GetMscSubSubscriptionsSubscription.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

