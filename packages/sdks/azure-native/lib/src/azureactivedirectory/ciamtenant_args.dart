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
    required this.createTenantProperties,
    this.location,
    required this.resourceGroupName,
    this.resourceName,
    required this.sku,
    this.tags,
    this.tenantId,
  });

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
      createTenantProperties: pulumi.Input.fromValue(CreateCIAMTenantProperties.fromMap((map['createTenantProperties']! as Map).cast<String, dynamic>())),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: pulumi.Input.fromValue(CIAMResourceSKU.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

