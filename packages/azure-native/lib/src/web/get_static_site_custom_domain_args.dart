// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_static_site_custom_domain_args_doc}
/// Arguments for getStaticSiteCustomDomain.
/// {@endtemplate}
/// {@macro pulumi_web_get_static_site_custom_domain_args_doc}
class GetStaticSiteCustomDomainArgs {
  /// The custom domain name.
  final pulumi.Input<String> domainName;
  /// Name of the static site resource to search in.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetStaticSiteCustomDomainArgs].
  /// [domainName] The custom domain name.
  /// [name] Name of the static site resource to search in.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  GetStaticSiteCustomDomainArgs({
    required String domainName,
    required String name,
    required String resourceGroupName,
  }) :
      domainName = pulumi.Input.asInput<String>(domainName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetStaticSiteCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetStaticSiteCustomDomainArgs(
      domainName: map['domainName'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

