// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_domain_properties.dart';

/// {@template pulumi_appplatform_custom_domain_args_doc}
/// The set of arguments for CustomDomain.
/// {@endtemplate}
/// {@macro pulumi_appplatform_custom_domain_args_doc}
class CustomDomainArgs {
  /// The name of the App resource.
  final pulumi.Input<String> appName;
  /// The name of the custom domain resource.
  final pulumi.Input<String>? domainName;
  /// Properties of the custom domain resource.
  final pulumi.Input<CustomDomainProperties>? properties;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [CustomDomainArgs].
  /// [appName] The name of the App resource.
  /// [domainName] The name of the custom domain resource.
  /// [properties] Properties of the custom domain resource.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  CustomDomainArgs({
    required this.appName,
    this.domainName,
    this.properties,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': appName,
      'domainName': ?domainName,
      'properties': ?pulumi.Input.mapOptionalInputValue<CustomDomainProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory CustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return CustomDomainArgs(
      appName: (map['appName'] as String).input(),
      domainName: map['domainName'] == null ? null : (map['domainName']! as String).input(),
      properties: map['properties'] == null ? null : (CustomDomainProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

