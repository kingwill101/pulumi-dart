// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_service_environment_properties.dart';
import 'integration_service_environment_sku.dart';
import 'managed_service_identity.dart';

/// {@template pulumi_logic_integration_service_environment_args_doc}
/// The set of arguments for IntegrationServiceEnvironment.
/// {@endtemplate}
/// {@macro pulumi_logic_integration_service_environment_args_doc}
class IntegrationServiceEnvironmentArgs {
  /// Managed service identity properties.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The integration service environment name.
  final pulumi.Input<String>? integrationServiceEnvironmentName;
  /// The resource location.
  final pulumi.Input<String>? location;
  /// The integration service environment properties.
  final pulumi.Input<IntegrationServiceEnvironmentProperties>? properties;
  /// The resource group.
  final pulumi.Input<String> resourceGroup;
  /// The sku.
  final pulumi.Input<IntegrationServiceEnvironmentSku>? sku;
  /// The resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IntegrationServiceEnvironmentArgs].
  /// [identity] Managed service identity properties.
  /// [integrationServiceEnvironmentName] The integration service environment name.
  /// [location] The resource location.
  /// [properties] The integration service environment properties.
  /// [resourceGroup] The resource group.
  /// [sku] The sku.
  /// [tags] The resource tags.
  IntegrationServiceEnvironmentArgs({
    this.identity,
    this.integrationServiceEnvironmentName,
    this.location,
    this.properties,
    required this.resourceGroup,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'integrationServiceEnvironmentName': ?integrationServiceEnvironmentName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<IntegrationServiceEnvironmentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroup': resourceGroup,
      'sku': ?pulumi.Input.mapOptionalInputValue<IntegrationServiceEnvironmentSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory IntegrationServiceEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationServiceEnvironmentArgs(
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      integrationServiceEnvironmentName: map['integrationServiceEnvironmentName'] == null ? null : (map['integrationServiceEnvironmentName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      properties: map['properties'] == null ? null : (IntegrationServiceEnvironmentProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroup: (map['resourceGroup'] as String).input(),
      sku: map['sku'] == null ? null : (IntegrationServiceEnvironmentSku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

