// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_security_partner_provider_args_doc}
/// Arguments for getSecurityPartnerProvider.
/// {@endtemplate}
/// {@macro pulumi_network_get_security_partner_provider_args_doc}
class GetSecurityPartnerProviderArgs {
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Security Partner Provider.
  final pulumi.Input<String> securityPartnerProviderName;

  /// Creates a new [GetSecurityPartnerProviderArgs].
  /// [resourceGroupName] The name of the resource group.
  /// [securityPartnerProviderName] The name of the Security Partner Provider.
  GetSecurityPartnerProviderArgs({
    required String resourceGroupName,
    required String securityPartnerProviderName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      securityPartnerProviderName = pulumi.Input.asInput<String>(securityPartnerProviderName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'securityPartnerProviderName': securityPartnerProviderName,
    };
  }

  factory GetSecurityPartnerProviderArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityPartnerProviderArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      securityPartnerProviderName: map['securityPartnerProviderName'] as String,
    );
  }
}

