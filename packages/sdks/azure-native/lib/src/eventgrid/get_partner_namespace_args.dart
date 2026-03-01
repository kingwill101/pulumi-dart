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
  GetPartnerNamespaceArgs({
    required pulumi.Output<String> partnerNamespaceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      partnerNamespaceName = pulumi.Input.asInput<String>(partnerNamespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partnerNamespaceName': partnerNamespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPartnerNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return GetPartnerNamespaceArgs(
      partnerNamespaceName: pulumi.Output.create<String>(map['partnerNamespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

