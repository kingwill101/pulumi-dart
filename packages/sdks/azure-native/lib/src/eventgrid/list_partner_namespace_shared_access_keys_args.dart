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
    required this.partnerNamespaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partnerNamespaceName': partnerNamespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListPartnerNamespaceSharedAccessKeysArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListPartnerNamespaceSharedAccessKeysArgs(
      partnerNamespaceName: pulumi.Input.fromValue(
        map['partnerNamespaceName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
