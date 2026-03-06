// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_partner_namespace_args_doc}
/// Arguments for getPartnerNamespace.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_partner_namespace_args_doc}
class GetPartnerNamespaceArgs {
  /// Name of the partner namespace.
  final pulumi.Input<String> partnerNamespaceName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPartnerNamespaceArgs].
  /// [partnerNamespaceName] Name of the partner namespace.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  const GetPartnerNamespaceArgs({
    required this.partnerNamespaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partnerNamespaceName': partnerNamespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPartnerNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return GetPartnerNamespaceArgs(
      partnerNamespaceName: pulumi.Input.fromValue(map['partnerNamespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

