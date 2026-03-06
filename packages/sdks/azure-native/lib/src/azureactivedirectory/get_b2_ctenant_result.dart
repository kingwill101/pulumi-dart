// ignore_for_file: unused_element, unnecessary_cast

import 'b2_cresource_skuresponse.dart';
import 'b2_ctenant_resource_properties_response_billing_config.dart';
import 'system_data_response.dart';

/// Result data returned by getB2CTenant.
class GetB2CTenantResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The billing configuration for the tenant.
  final B2CTenantResourcePropertiesResponseBillingConfig? billingConfig;
  /// An identifier that represents the Azure AD B2C tenant resource.
  final String id;
  /// Enable GoLocal add-on to store data at rest in the specific Geo. Refer to [aka.ms/B2CDataResidency](https://aka.ms/B2CDataResidency) to see local data residency options.
  final bool? isGoLocalTenant;
  /// The location in which the resource is hosted and data resides. Can be one of 'United States', 'Europe', 'Asia Pacific', or 'Australia'. Refer to [this documentation](https://aka.ms/B2CDataResidency) for more information.
  final String location;
  /// The name of the Azure AD B2C tenant resource.
  final String name;
  /// SKU properties of the Azure AD B2C tenant. Learn more about Azure AD B2C billing at [aka.ms/b2cBilling](https://aka.ms/b2cBilling).
  final B2CResourceSKUResponse sku;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// Resource Tags
  final Map<String, String>? tags;
  /// An identifier of the Azure AD B2C tenant.
  final String? tenantId;
  /// The type of the B2C tenant resource.
  final String type;

  /// Creates a new [GetB2CTenantResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [billingConfig] The billing configuration for the tenant.
  /// [id] An identifier that represents the Azure AD B2C tenant resource.
  /// [isGoLocalTenant] Enable GoLocal add-on to store data at rest in the specific Geo. Refer to [aka.ms/B2CDataResidency](https://aka.ms/B2CDataResidency) to see local data residency options.
  /// [location] The location in which the resource is hosted and data resides. Can be one of 'United States', 'Europe', 'Asia Pacific', or 'Australia'. Refer to [this documentation](https://aka.ms/B2CDataResidency) for more information.
  /// [name] The name of the Azure AD B2C tenant resource.
  /// [sku] SKU properties of the Azure AD B2C tenant. Learn more about Azure AD B2C billing at [aka.ms/b2cBilling](https://aka.ms/b2cBilling).
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Resource Tags
  /// [tenantId] An identifier of the Azure AD B2C tenant.
  /// [type] The type of the B2C tenant resource.
  const GetB2CTenantResult({
    required this.azureApiVersion,
    this.billingConfig,
    required this.id,
    this.isGoLocalTenant,
    required this.location,
    required this.name,
    required this.sku,
    required this.systemData,
    this.tags,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'billingConfig': ?billingConfig?.toMap(),
      'id': id,
      'isGoLocalTenant': ?isGoLocalTenant,
      'location': location,
      'name': name,
      'sku': sku.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory GetB2CTenantResult.fromMap(Map<String, dynamic> map) {
    return GetB2CTenantResult(
      azureApiVersion: map['azureApiVersion'] as String,
      billingConfig: (() { final guardedValue = map['billingConfig']; if (guardedValue == null) return null; return B2CTenantResourcePropertiesResponseBillingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      isGoLocalTenant: (() { final guardedValue = map['isGoLocalTenant']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      location: map['location'] as String,
      name: map['name'] as String,
      sku: B2CResourceSKUResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

