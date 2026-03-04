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
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.subscriptionName,
    required this.topicName,
  });

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
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pageNumber: (() {
        final guardedValue = map['pageNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      pageSize: (() {
        final guardedValue = map['pageSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      subscriptionName: (() {
        final guardedValue = map['subscriptionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      topicName: pulumi.Input.fromValue(map['topicName'] as String),
    );
  }
}
