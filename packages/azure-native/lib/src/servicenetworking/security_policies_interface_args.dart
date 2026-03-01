// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_policy.dart';

/// {@template pulumi_servicenetworking_security_policies_interface_args_doc}
/// The set of arguments for SecurityPoliciesInterface.
/// {@endtemplate}
/// {@macro pulumi_servicenetworking_security_policies_interface_args_doc}
class SecurityPoliciesInterfaceArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// SecurityPolicy
  final pulumi.Input<String>? securityPolicyName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// traffic controller name for path
  final pulumi.Input<String> trafficControllerName;
  /// Web Application Firewall Policy of the Traffic Controller Security Policy. Single Security Policy can have only one policy type set.
  final pulumi.Input<WafPolicy>? wafPolicy;

  /// Creates a new [SecurityPoliciesInterfaceArgs].
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [securityPolicyName] SecurityPolicy
  /// [tags] Resource tags.
  /// [trafficControllerName] traffic controller name for path
  /// [wafPolicy] Web Application Firewall Policy of the Traffic Controller Security Policy. Single Security Policy can have only one policy type set.
  SecurityPoliciesInterfaceArgs({
    String? location,
    required String resourceGroupName,
    String? securityPolicyName,
    Map<String, String>? tags,
    required String trafficControllerName,
    WafPolicy? wafPolicy,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      securityPolicyName = pulumi.Input.asOptionalInput<String>(securityPolicyName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      trafficControllerName = pulumi.Input.asInput<String>(trafficControllerName),
      wafPolicy = pulumi.Input.asOptionalInput<WafPolicy>(wafPolicy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'securityPolicyName': ?securityPolicyName,
      'tags': ?tags,
      'trafficControllerName': trafficControllerName,
      'wafPolicy': ?pulumi.Input.mapOptionalInputValue<WafPolicy, Map<String, dynamic>>(wafPolicy, (value) => value.toMap()),
    };
  }

  factory SecurityPoliciesInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return SecurityPoliciesInterfaceArgs(
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      securityPolicyName: map['securityPolicyName'] == null ? null : map['securityPolicyName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      trafficControllerName: map['trafficControllerName'] as String,
      wafPolicy: map['wafPolicy'] == null ? null : WafPolicy.fromMap((map['wafPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}

