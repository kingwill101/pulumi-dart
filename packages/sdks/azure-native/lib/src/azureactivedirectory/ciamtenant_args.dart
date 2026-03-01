// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ciamresource_sku.dart';
import 'create_ciamtenant_properties.dart';

/// {@template pulumi_azureactivedirectory_ciamtenant_args_doc}
/// The set of arguments for CIAMTenant.
/// {@endtemplate}
/// {@macro pulumi_azureactivedirectory_ciamtenant_args_doc}
class CIAMTenantArgs {
  /// These properties are used to create the Azure AD for customers tenant. These properties are not part of the Azure resource.
  final pulumi.Input<CreateCIAMTenantProperties> createTenantProperties;
  /// The location in which the resource is hosted and data resides. Can be one of 'United States', 'Europe', 'Asia Pacific', or 'Australia'. Refer to [this documentation](https://aka.ms/ciam-data-location) for more information.
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The initial sub domain of the tenant.
  final pulumi.Input<String>? resourceName;
  /// SKU properties of the Azure AD for customers tenant. Learn more about Azure AD for customers billing at [https://aka.ms/ciambilling](https://aka.ms/ciambilling).
  final pulumi.Input<CIAMResourceSKU> sku;
  /// Resource Tags
  final pulumi.Input<Map<String, String>>? tags;
  /// An identifier of the Azure AD for customers tenant.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [CIAMTenantArgs].
  /// [createTenantProperties] These properties are used to create the Azure AD for customers tenant. These properties are not part of the Azure resource.
  /// [location] The location in which the resource is hosted and data resides. Can be one of 'United States', 'Europe', 'Asia Pacific', or 'Australia'. Refer to [this documentation](https://aka.ms/ciam-data-location) for more information.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The initial sub domain of the tenant.
  /// [sku] SKU properties of the Azure AD for customers tenant. Learn more about Azure AD for customers billing at [https://aka.ms/ciambilling](https://aka.ms/ciambilling).
  /// [tags] Resource Tags
  /// [tenantId] An identifier of the Azure AD for customers tenant.
  CIAMTenantArgs({
    required pulumi.Output<CreateCIAMTenantProperties> createTenantProperties,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? resourceName,
    required pulumi.Output<CIAMResourceSKU> sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? tenantId,
  }) :
      createTenantProperties = pulumi.Input.asInput<CreateCIAMTenantProperties>(createTenantProperties),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asOptionalInput<String>(resourceName),
      sku = pulumi.Input.asInput<CIAMResourceSKU>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTenantProperties': pulumi.Input.mapInputValue<CreateCIAMTenantProperties, Map<String, dynamic>>(createTenantProperties, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'sku': pulumi.Input.mapInputValue<CIAMResourceSKU, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory CIAMTenantArgs.fromMap(Map<String, dynamic> map) {
    return CIAMTenantArgs(
      createTenantProperties: pulumi.Output.create<CreateCIAMTenantProperties>(CreateCIAMTenantProperties.fromMap((map['createTenantProperties'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: map['resourceName'] == null ? null : pulumi.Output.create<String>(map['resourceName'] as String),
      sku: pulumi.Output.create<CIAMResourceSKU>(CIAMResourceSKU.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

