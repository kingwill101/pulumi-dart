// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_custom_api_args_doc}
/// Arguments for getCustomApi.
/// {@endtemplate}
/// {@macro pulumi_web_get_custom_api_args_doc}
class GetCustomApiArgs {
  /// API name
  final pulumi.Input<String> apiName;
  /// The resource group
  final pulumi.Input<String> resourceGroupName;
  /// Subscription Id
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [GetCustomApiArgs].
  /// [apiName] API name
  /// [resourceGroupName] The resource group
  /// [subscriptionId] Subscription Id
  GetCustomApiArgs({
    required String apiName,
    required String resourceGroupName,
    String? subscriptionId,
  }) :
      apiName = pulumi.Input.asInput<String>(apiName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiName': apiName,
      'resourceGroupName': resourceGroupName,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory GetCustomApiArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomApiArgs(
      apiName: map['apiName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
    );
  }
}

