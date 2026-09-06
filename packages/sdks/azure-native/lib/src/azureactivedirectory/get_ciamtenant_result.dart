// ignore_for_file: unused_element, unnecessary_cast

import 'ciamresource_skuresponse.dart';
import 'create_ciamtenant_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCIAMTenant.
class GetCIAMTenantResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The type of billing. Will be MAU for all new customers. Cannot be changed if value is 'MAU'. Learn more about Azure AD for customers billing at [aka.ms/b2cBilling](https://aka.ms/b2cbilling).
  final String? billingType;
  /// These properties are used to create the Azure AD for customers tenant. These properties are not part of the Azure resource.
  final CreateCIAMTenantPropertiesResponse? createTenantProperties;
  /// The domain name of the tenant
  final String? domainName;
  /// The data from which the billing type took effect
  final String? effectiveStartDateUtc;
  /// An identifier that represents the Azure AD for customers tenant resource.
  final String? id;
  /// The location in which the resource is hosted and data resides. Can be one of 'United States', 'Europe', 'Asia Pacific', or 'Australia'. Refer to [this documentation](https://aka.ms/ciam-data-location) for more information.
  final String? location;
  /// The name of the Azure AD for customers tenant resource.
  final String? name;
  final String? provisioningState;
  /// SKU properties of the Azure AD for customers tenant. Learn more about Azure AD for customers billing at [https://aka.ms/ciambilling](https://aka.ms/ciambilling).
  final CIAMResourceSKUResponse? sku;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// Resource Tags
  final Map<String, String>? tags;
  /// An identifier of the Azure AD for customers tenant.
  final String? tenantId;
  /// The type of the Azure AD for customers tenant resource.
  final String? type;

  /// Creates a new [GetCIAMTenantResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [billingType] The type of billing. Will be MAU for all new customers. Cannot be changed if value is 'MAU'. Learn more about Azure AD for customers billing at [aka.ms/b2cBilling](https://aka.ms/b2cbilling).
  /// [createTenantProperties] These properties are used to create the Azure AD for customers tenant. These properties are not part of the Azure resource.
  /// [domainName] The domain name of the tenant
  /// [effectiveStartDateUtc] The data from which the billing type took effect
  /// [id] An identifier that represents the Azure AD for customers tenant resource.
  /// [location] The location in which the resource is hosted and data resides. Can be one of 'United States', 'Europe', 'Asia Pacific', or 'Australia'. Refer to [this documentation](https://aka.ms/ciam-data-location) for more information.
  /// [name] The name of the Azure AD for customers tenant resource.
  /// [provisioningState] Optional.
  /// [sku] SKU properties of the Azure AD for customers tenant. Learn more about Azure AD for customers billing at [https://aka.ms/ciambilling](https://aka.ms/ciambilling).
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Resource Tags
  /// [tenantId] An identifier of the Azure AD for customers tenant.
  /// [type] The type of the Azure AD for customers tenant resource.
  const GetCIAMTenantResult({
    this.azureApiVersion,
    this.billingType,
    this.createTenantProperties,
    this.domainName,
    this.effectiveStartDateUtc,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.sku,
    this.systemData,
    this.tags,
    this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'billingType': ?billingType,
      'createTenantProperties': ?createTenantProperties?.toMap(),
      'domainName': ?domainName,
      'effectiveStartDateUtc': ?effectiveStartDateUtc,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'sku': ?sku?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'tenantId': ?tenantId,
      'type': ?type,
    };
  }

  factory GetCIAMTenantResult.fromMap(Map<String, dynamic> map) {
    return GetCIAMTenantResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      billingType: (() { final guardedValue = map['billingType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTenantProperties: (() { final guardedValue = map['createTenantProperties']; if (guardedValue == null) return null; return CreateCIAMTenantPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveStartDateUtc: (() { final guardedValue = map['effectiveStartDateUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return CIAMResourceSKUResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
