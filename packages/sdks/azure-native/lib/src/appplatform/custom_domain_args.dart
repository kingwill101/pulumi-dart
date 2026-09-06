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
  final pulumi.Input<String?>? domainName;
  /// Properties of the custom domain resource.
  final pulumi.Input<CustomDomainProperties?>? properties;
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
  const CustomDomainArgs({
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
      appName: pulumi.Input.fromValue(map['appName'] as String),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomDomainProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
