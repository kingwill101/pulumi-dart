// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_list_partner_namespace_shared_access_keys_args_doc}
/// Arguments for listPartnerNamespaceSharedAccessKeys.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_list_partner_namespace_shared_access_keys_args_doc}
class ListPartnerNamespaceSharedAccessKeysArgs {
  /// Name of the partner namespace.
  final pulumi.Input<String> partnerNamespaceName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListPartnerNamespaceSharedAccessKeysArgs].
  /// [partnerNamespaceName] Name of the partner namespace.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  ListPartnerNamespaceSharedAccessKeysArgs({
    required String partnerNamespaceName,
    required String resourceGroupName,
  }) :
      partnerNamespaceName = pulumi.Input.asInput<String>(partnerNamespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partnerNamespaceName': partnerNamespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListPartnerNamespaceSharedAccessKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListPartnerNamespaceSharedAccessKeysArgs(
      partnerNamespaceName: map['partnerNamespaceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

