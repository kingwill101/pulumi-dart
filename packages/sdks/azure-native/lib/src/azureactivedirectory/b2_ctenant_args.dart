// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'b2_cresource_sku.dart';

/// {@template pulumi_azureactivedirectory_b2_ctenant_args_doc}
/// The set of arguments for B2CTenant.
/// {@endtemplate}
/// {@macro pulumi_azureactivedirectory_b2_ctenant_args_doc}
class B2CTenantArgs {
  /// Country code of Azure tenant (e.g. 'US'). Refer to [aka.ms/B2CDataResidency](https://aka.ms/B2CDataResidency) to see valid country codes and corresponding data residency locations. If you do not see a country code in an valid data residency location, choose one from the list.
  final pulumi.Input<String>? countryCode;
  /// The display name of the Azure AD B2C tenant.
  final pulumi.Input<String>? displayName;
  /// Enable GoLocal add-on to store data at rest in the specific Geo. Refer to [aka.ms/B2CDataResidency](https://aka.ms/B2CDataResidency) to see local data residency options.
  final pulumi.Input<bool>? isGoLocalTenant;
  /// The location in which the resource is hosted and data resides. Can be one of 'United States', 'Europe', 'Asia Pacific', or 'Australia'. Refer to [this documentation](https://aka.ms/B2CDataResidency) for more information.
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The initial domain name of the Azure AD B2C tenant.
  final pulumi.Input<String>? resourceName;
  /// SKU properties of the Azure AD B2C tenant. Learn more about Azure AD B2C billing at [aka.ms/b2cBilling](https://aka.ms/b2cBilling).
  final pulumi.Input<B2CResourceSKU> sku;
  /// Resource Tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [B2CTenantArgs].
  /// [countryCode] Country code of Azure tenant (e.g. 'US'). Refer to [aka.ms/B2CDataResidency](https://aka.ms/B2CDataResidency) to see valid country codes and corresponding data residency locations. If you do not see a country code in an valid data residency location, choose one from the list.
  /// [displayName] The display name of the Azure AD B2C tenant.
  /// [isGoLocalTenant] Enable GoLocal add-on to store data at rest in the specific Geo. Refer to [aka.ms/B2CDataResidency](https://aka.ms/B2CDataResidency) to see local data residency options.
  /// [location] The location in which the resource is hosted and data resides. Can be one of 'United States', 'Europe', 'Asia Pacific', or 'Australia'. Refer to [this documentation](https://aka.ms/B2CDataResidency) for more information.
  /// [resourceGroupName] The name of the resource group.
  /// [resourceName] The initial domain name of the Azure AD B2C tenant.
  /// [sku] SKU properties of the Azure AD B2C tenant. Learn more about Azure AD B2C billing at [aka.ms/b2cBilling](https://aka.ms/b2cBilling).
  /// [tags] Resource Tags
  B2CTenantArgs({
    pulumi.Output<String>? countryCode,
    pulumi.Output<String>? displayName,
    pulumi.Output<bool>? isGoLocalTenant,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? resourceName,
    required pulumi.Output<B2CResourceSKU> sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      countryCode = pulumi.Input.asOptionalInput<String>(countryCode),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      isGoLocalTenant = pulumi.Input.asOptionalInput<bool>(isGoLocalTenant),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asOptionalInput<String>(resourceName),
      sku = pulumi.Input.asInput<B2CResourceSKU>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryCode': ?countryCode,
      'displayName': ?displayName,
      'isGoLocalTenant': ?isGoLocalTenant,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'sku': pulumi.Input.mapInputValue<B2CResourceSKU, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory B2CTenantArgs.fromMap(Map<String, dynamic> map) {
    return B2CTenantArgs(
      countryCode: map['countryCode'] == null ? null : pulumi.Output.create<String>(map['countryCode'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      isGoLocalTenant: map['isGoLocalTenant'] == null ? null : pulumi.Output.create<bool>(map['isGoLocalTenant'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: map['resourceName'] == null ? null : pulumi.Output.create<String>(map['resourceName'] as String),
      sku: pulumi.Output.create<B2CResourceSKU>(B2CResourceSKU.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

