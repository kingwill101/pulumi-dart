// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_list_subscriptions_args_doc}
/// Arguments for listSubscriptions.
/// {@endtemplate}
/// {@macro pulumi_authorization_list_subscriptions_args_doc}
class ListSubscriptionsArgs {
  /// The API version to use for the request. Defaults to '2022-12-01'.
  final pulumi.Input<String?>? apiVersion;

  /// Creates a new [ListSubscriptionsArgs].
  /// [apiVersion] The API version to use for the request. Defaults to '2022-12-01'.
  const ListSubscriptionsArgs({
    this.apiVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
    };
  }

  factory ListSubscriptionsArgs.fromMap(Map<String, dynamic> map) {
    return ListSubscriptionsArgs(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
