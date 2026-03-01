// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference.dart';

/// {@template pulumi_webpubsub_web_pub_sub_custom_domain_args_doc}
/// The set of arguments for WebPubSubCustomDomain.
/// {@endtemplate}
/// {@macro pulumi_webpubsub_web_pub_sub_custom_domain_args_doc}
class WebPubSubCustomDomainArgs {
  /// Reference to a resource.
  final pulumi.Input<ResourceReference> customCertificate;
  /// The custom domain name.
  final pulumi.Input<String> domainName;
  /// Custom domain name.
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [WebPubSubCustomDomainArgs].
  /// [customCertificate] Reference to a resource.
  /// [domainName] The custom domain name.
  /// [name] Custom domain name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the resource.
  WebPubSubCustomDomainArgs({
    required ResourceReference customCertificate,
    required String domainName,
    String? name,
    required String resourceGroupName,
    required String resourceName,
  }) :
      customCertificate = pulumi.Input.asInput<ResourceReference>(customCertificate),
      domainName = pulumi.Input.asInput<String>(domainName),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customCertificate': pulumi.Input.mapInputValue<ResourceReference, Map<String, dynamic>>(customCertificate, (value) => value.toMap()),
      'domainName': domainName,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory WebPubSubCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return WebPubSubCustomDomainArgs(
      customCertificate: ResourceReference.fromMap((map['customCertificate'] as Map).cast<String, dynamic>()),
      domainName: map['domainName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
    );
  }
}

