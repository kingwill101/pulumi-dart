// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_subscriptions_subscription.dart';

/// Result data returned by getServiceSubscriptions.
class GetServiceSubscriptionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Subscription names.
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  /// The name of the subscription.
  final String? subscriptionName;
  /// A list of Subscriptions. Each element contains the following attributes:
  final List<GetServiceSubscriptionsSubscription> subscriptions;
  /// The name of the topic.
  final String topicName;

  /// Creates a new [GetServiceSubscriptionsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Subscription names.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [subscriptionName] The name of the subscription.
  /// [subscriptions] A list of Subscriptions. Each element contains the following attributes:
  /// [topicName] The name of the topic.
  GetServiceSubscriptionsResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.subscriptionName,
    required this.subscriptions,
    required this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'subscriptionName': ?subscriptionName,
      'subscriptions': pulumi.Input.encodeList<GetServiceSubscriptionsSubscription, Map<String, dynamic>>(subscriptions, (value) => value.toMap()),
      'topicName': topicName,
    };
  }

  factory GetServiceSubscriptionsResult.fromMap(Map<String, dynamic> map) {
    return GetServiceSubscriptionsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber']! as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize']! as int,
      subscriptionName: map['subscriptionName'] == null ? null : map['subscriptionName']! as String,
      subscriptions: pulumi.Input.decodeList<GetServiceSubscriptionsSubscription>(map['subscriptions'], (value) => GetServiceSubscriptionsSubscription.fromMap((value as Map).cast<String, dynamic>())),
      topicName: map['topicName'] as String,
    );
  }
}

