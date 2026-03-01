// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_webpubsub_get_web_pub_sub_custom_domain_args_doc}
/// Arguments for getWebPubSubCustomDomain.
/// {@endtemplate}
/// {@macro pulumi_webpubsub_get_web_pub_sub_custom_domain_args_doc}
class GetWebPubSubCustomDomainArgs {
  /// Custom domain name.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetWebPubSubCustomDomainArgs].
  /// [name] Custom domain name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the resource.
  GetWebPubSubCustomDomainArgs({
    required String name,
    required String resourceGroupName,
    required String resourceName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetWebPubSubCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetWebPubSubCustomDomainArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
    );
  }
}

