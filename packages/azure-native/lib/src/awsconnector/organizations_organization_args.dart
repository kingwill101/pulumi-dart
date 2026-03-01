// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organizations_organization_properties.dart';

/// {@template pulumi_awsconnector_organizations_organization_args_doc}
/// The set of arguments for OrganizationsOrganization.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_organizations_organization_args_doc}
class OrganizationsOrganizationArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of OrganizationsOrganization
  final pulumi.Input<String>? name;
  /// The resource-specific properties for this resource.
  final pulumi.Input<OrganizationsOrganizationProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [OrganizationsOrganizationArgs].
  /// [location] The geo-location where the resource lives
  /// [name] Name of OrganizationsOrganization
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  OrganizationsOrganizationArgs({
    String? location,
    String? name,
    OrganizationsOrganizationProperties? properties,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asOptionalInput<OrganizationsOrganizationProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<OrganizationsOrganizationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory OrganizationsOrganizationArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationsOrganizationArgs(
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      properties: map['properties'] == null ? null : OrganizationsOrganizationProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

