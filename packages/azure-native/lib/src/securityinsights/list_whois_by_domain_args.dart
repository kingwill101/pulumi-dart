// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_list_whois_by_domain_args_doc}
/// Arguments for listWhoisByDomain.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_list_whois_by_domain_args_doc}
class ListWhoisByDomainArgs {
  /// The domain name
  final pulumi.Input<String>? domain;
  /// Enrichment type
  final pulumi.Input<String> enrichmentType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ListWhoisByDomainArgs].
  /// [domain] The domain name
  /// [enrichmentType] Enrichment type
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  ListWhoisByDomainArgs({
    String? domain,
    required String enrichmentType,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      domain = pulumi.Input.asOptionalInput<String>(domain),
      enrichmentType = pulumi.Input.asInput<String>(enrichmentType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'enrichmentType': enrichmentType,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory ListWhoisByDomainArgs.fromMap(Map<String, dynamic> map) {
    return ListWhoisByDomainArgs(
      domain: map['domain'] == null ? null : map['domain'] as String,
      enrichmentType: map['enrichmentType'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

