// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_get_certificate_object_local_rulestack_args_doc}
/// Arguments for getCertificateObjectLocalRulestack.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_get_certificate_object_local_rulestack_args_doc}
class GetCertificateObjectLocalRulestackArgs {
  /// LocalRulestack resource name
  final pulumi.Input<String> localRulestackName;
  /// certificate name
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCertificateObjectLocalRulestackArgs].
  /// [localRulestackName] LocalRulestack resource name
  /// [name] certificate name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCertificateObjectLocalRulestackArgs({
    required String localRulestackName,
    required String name,
    required String resourceGroupName,
  }) :
      localRulestackName = pulumi.Input.asInput<String>(localRulestackName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localRulestackName': localRulestackName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCertificateObjectLocalRulestackArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateObjectLocalRulestackArgs(
      localRulestackName: map['localRulestackName'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

