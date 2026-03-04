// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_web_application_firewall_parameters.dart';

/// {@template pulumi_cdn_security_policy_args_doc}
/// The set of arguments for SecurityPolicy.
/// {@endtemplate}
/// {@macro pulumi_cdn_security_policy_args_doc}
class SecurityPolicyArgs {
  /// object which contains security policy parameters
  final pulumi.Input<SecurityPolicyWebApplicationFirewallParameters>?
  parameters;

  /// Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  final pulumi.Input<String> profileName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Name of the security policy under the profile.
  final pulumi.Input<String>? securityPolicyName;

  /// Creates a new [SecurityPolicyArgs].
  /// [parameters] object which contains security policy parameters
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [securityPolicyName] Name of the security policy under the profile.
  SecurityPolicyArgs({
    this.parameters,
    required this.profileName,
    required this.resourceGroupName,
    this.securityPolicyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            SecurityPolicyWebApplicationFirewallParameters,
            Map<String, dynamic>
          >(parameters, (value) => value.toMap()),
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
      'securityPolicyName': ?securityPolicyName,
    };
  }

  factory SecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyArgs(
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecurityPolicyWebApplicationFirewallParameters.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      profileName: pulumi.Input.fromValue(map['profileName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      securityPolicyName: (() {
        final guardedValue = map['securityPolicyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
