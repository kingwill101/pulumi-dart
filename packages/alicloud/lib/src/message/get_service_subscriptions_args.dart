// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_message_get_service_subscriptions_get_service_subscriptions_args_doc}
/// Arguments for getServiceSubscriptions.
/// {@endtemplate}
/// {@macro pulumi_message_get_service_subscriptions_get_service_subscriptions_args_doc}
class GetServiceSubscriptionsArgs {
  /// A list of Subscription IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Subscription name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The name of the subscription.
  final pulumi.Input<String>? subscriptionName;
  /// The name of the topic.
  final pulumi.Input<String> topicName;

  /// Creates a new [GetServiceSubscriptionsArgs].
  /// [ids] A list of Subscription IDs.
  /// [nameRegex] A regex string to filter results by Subscription name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [subscriptionName] The name of the subscription.
  /// [topicName] The name of the topic.
  GetServiceSubscriptionsArgs({
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    int? pageNumber,
    int? pageSize,
    String? subscriptionName,
    required String topicName,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      subscriptionName = pulumi.Input.asOptionalInput<String>(subscriptionName),
      topicName = pulumi.Input.asInput<String>(topicName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'subscriptionName': ?subscriptionName,
      'topicName': topicName,
    };
  }

  factory GetServiceSubscriptionsArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceSubscriptionsArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      subscriptionName: map['subscriptionName'] == null ? null : map['subscriptionName'] as String,
      topicName: map['topicName'] as String,
    );
  }
}

