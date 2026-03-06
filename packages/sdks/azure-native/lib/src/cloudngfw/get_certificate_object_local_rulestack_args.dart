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
  const GetCertificateObjectLocalRulestackArgs({
    required this.localRulestackName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localRulestackName': localRulestackName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCertificateObjectLocalRulestackArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateObjectLocalRulestackArgs(
      localRulestackName: pulumi.Input.fromValue(map['localRulestackName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

