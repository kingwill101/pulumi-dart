// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_get_custom_domain_args_doc}
/// Arguments for getCustomDomain.
/// {@endtemplate}
/// {@macro pulumi_appplatform_get_custom_domain_args_doc}
class GetCustomDomainArgs {
  /// The name of the App resource.
  final pulumi.Input<String> appName;
  /// The name of the custom domain resource.
  final pulumi.Input<String> domainName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetCustomDomainArgs].
  /// [appName] The name of the App resource.
  /// [domainName] The name of the custom domain resource.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  GetCustomDomainArgs({
    required String appName,
    required String domainName,
    required String resourceGroupName,
    required String serviceName,
  }) :
      appName = pulumi.Input.asInput<String>(appName),
      domainName = pulumi.Input.asInput<String>(domainName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': appName,
      'domainName': domainName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomDomainArgs(
      appName: map['appName'] as String,
      domainName: map['domainName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

