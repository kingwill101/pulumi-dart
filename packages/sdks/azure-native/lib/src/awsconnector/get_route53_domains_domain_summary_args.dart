// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_route53_domains_domain_summary_args_doc}
/// Arguments for getRoute53DomainsDomainSummary.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_route53_domains_domain_summary_args_doc}
class GetRoute53DomainsDomainSummaryArgs {
  /// Name of Route53DomainsDomainSummary
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRoute53DomainsDomainSummaryArgs].
  /// [name] Name of Route53DomainsDomainSummary
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetRoute53DomainsDomainSummaryArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRoute53DomainsDomainSummaryArgs.fromMap(Map<String, dynamic> map) {
    return GetRoute53DomainsDomainSummaryArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

