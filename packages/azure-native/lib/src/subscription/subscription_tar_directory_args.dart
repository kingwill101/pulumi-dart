// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_directory_request_properties.dart';

/// {@template pulumi_subscription_subscription_tar_directory_args_doc}
/// The set of arguments for SubscriptionTarDirectory.
/// {@endtemplate}
/// {@macro pulumi_subscription_subscription_tar_directory_args_doc}
class SubscriptionTarDirectoryArgs {
  /// Target Directory request properties.
  final pulumi.Input<TargetDirectoryRequestProperties>? properties;
  /// Subscription Id.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [SubscriptionTarDirectoryArgs].
  /// [properties] Target Directory request properties.
  /// [subscriptionId] Subscription Id.
  SubscriptionTarDirectoryArgs({
    TargetDirectoryRequestProperties? properties,
    String? subscriptionId,
  }) :
      properties = pulumi.Input.asOptionalInput<TargetDirectoryRequestProperties>(properties),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<TargetDirectoryRequestProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'subscriptionId': ?subscriptionId,
    };
  }

  factory SubscriptionTarDirectoryArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionTarDirectoryArgs(
      properties: map['properties'] == null ? null : TargetDirectoryRequestProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
    );
  }
}

