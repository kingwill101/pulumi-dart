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
    required pulumi.Output<String> appName,
    pulumi.Output<String>? domainName,
    pulumi.Output<CustomDomainProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      appName = pulumi.Input.asInput<String>(appName),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      properties = pulumi.Input.asOptionalInput<CustomDomainProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

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
      appName: pulumi.Output.create<String>(map['appName'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<CustomDomainProperties>(CustomDomainProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

