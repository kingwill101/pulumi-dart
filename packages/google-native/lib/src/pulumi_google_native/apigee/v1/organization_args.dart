// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_addons_config.dart';
import 'google_cloud_apigee_v1_properties.dart';
import 'organization_billing_type.dart';
import 'organization_runtime_type.dart';
import 'organization_type.dart';

/// The set of arguments for Organization.
class OrganizationArgs {
  /// Addon configurations of the Apigee organization.
  final pulumi.Input<GoogleCloudApigeeV1AddonsConfig>? addonsConfig;

  /// DEPRECATED: This field will eventually be deprecated and replaced with a differently-named field. Primary Google Cloud region for analytics data storage. For valid values, see [Create an Apigee organization](https://cloud.google.com/apigee/docs/api-platform/get-started/create-org).
  final pulumi.Input<String> analyticsRegion;

  /// Cloud KMS key name used for encrypting API consumer data. Required for US/EU regions when [BillingType](#BillingType) is `SUBSCRIPTION`. When [BillingType](#BillingType) is `EVALUATION` or the region is not US/EU, a Google-Managed encryption key will be used. Format: `projects/*/locations/*/keyRings/*/cryptoKeys/*`
  final pulumi.Input<String>? apiConsumerDataEncryptionKeyName;

  /// This field is needed only for customers with control plane in US or EU. Apigee stores some control plane data only in single region. This field determines which single region Apigee should use. For example: "us-west1" when control plane is in US or "europe-west2" when control plane is in EU.
  final pulumi.Input<String>? apiConsumerDataLocation;

  /// Not used by Apigee.
  final pulumi.Input<List<String>>? attributes;

  /// Compute Engine network used for Service Networking to be peered with Apigee runtime instances. See [Getting started with the Service Networking API](https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started). Valid only when [RuntimeType](#RuntimeType) is set to `CLOUD`. The value must be set before the creation of a runtime instance and can be updated only when there are no runtime instances. For example: `default`. Apigee also supports shared VPC (that is, the host network project is not the same as the one that is peering with Apigee). See [Shared VPC overview](https://cloud.google.com/vpc/docs/shared-vpc). To use a shared VPC network, use the following format: `projects/{host-project-id}/{region}/networks/{network-name}`. For example: `projects/my-sharedvpc-host/global/networks/mynetwork` **Note:** Not supported for Apigee hybrid.
  final pulumi.Input<String>? authorizedNetwork;

  /// Billing type of the Apigee organization. See [Apigee pricing](https://cloud.google.com/apigee/pricing).
  final pulumi.Input<OrganizationBillingType>? billingType;

  /// Cloud KMS key name used for encrypting control plane data that is stored in a multi region. Required when [BillingType](#BillingType) is `SUBSCRIPTION`. When [BillingType](#BillingType) is `EVALUATION`, a Google-Managed encryption key will be used. Format: `projects/*/locations/*/keyRings/*/cryptoKeys/*`
  final pulumi.Input<String>? controlPlaneEncryptionKeyName;

  /// Not used by Apigee.
  final pulumi.Input<String>? customerName;

  /// Description of the Apigee organization.
  final pulumi.Input<String>? description;

  /// Optional. Flag that specifies whether the VPC Peering through Private Google Access should be disabled between the consumer network and Apigee. Valid only when RuntimeType is set to CLOUD. Required if an authorizedNetwork on the consumer project is not provided, in which case the flag should be set to true. The value must be set before the creation of any Apigee runtime instance and can be updated only when there are no runtime instances. **Note:** Apigee will be deprecating the vpc peering model that requires you to provide 'authorizedNetwork', by making the non-peering model as the default way of provisioning Apigee organization in future. So, this will be a temporary flag to enable the transition. Not supported for Apigee hybrid.
  final pulumi.Input<bool>? disableVpcPeering;

  /// Display name for the Apigee organization. Unused, but reserved for future use.
  final pulumi.Input<String>? displayName;

  /// Required. Name of the Google Cloud project in which to associate the Apigee organization. Pass the information as a query parameter using the following structure in your request: `projects/`
  final pulumi.Input<String> parent;

  /// Configuration for the Portals settings.
  final pulumi.Input<bool>? portalDisabled;

  /// Properties defined in the Apigee organization profile.
  final pulumi.Input<GoogleCloudApigeeV1Properties>? properties;

  /// Cloud KMS key name used for encrypting the data that is stored and replicated across runtime instances. Update is not allowed after the organization is created. Required when [RuntimeType](#RuntimeType) is `CLOUD`. If not specified when [RuntimeType](#RuntimeType) is `TRIAL`, a Google-Managed encryption key will be used. For example: "projects/foo/locations/us/keyRings/bar/cryptoKeys/baz". **Note:** Not supported for Apigee hybrid.
  final pulumi.Input<String>? runtimeDatabaseEncryptionKeyName;

  /// Runtime type of the Apigee organization based on the Apigee subscription purchased.
  final pulumi.Input<OrganizationRuntimeType> runtimeType_;

  /// Not used by Apigee.
  final pulumi.Input<OrganizationType>? type;

  OrganizationArgs({
    this.addonsConfig,
    required this.analyticsRegion,
    this.apiConsumerDataEncryptionKeyName,
    this.apiConsumerDataLocation,
    this.attributes,
    this.authorizedNetwork,
    this.billingType,
    this.controlPlaneEncryptionKeyName,
    this.customerName,
    this.description,
    this.disableVpcPeering,
    this.displayName,
    required this.parent,
    this.portalDisabled,
    this.properties,
    this.runtimeDatabaseEncryptionKeyName,
    required this.runtimeType_,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addonsConfigValue = addonsConfig;
    if (addonsConfigValue != null) {
      map['addonsConfig'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudApigeeV1AddonsConfig,
          Map<String, dynamic>>(addonsConfigValue, (value) => value.toMap());
    }
    map['analyticsRegion'] = analyticsRegion;
    final apiConsumerDataEncryptionKeyNameValue =
        apiConsumerDataEncryptionKeyName;
    if (apiConsumerDataEncryptionKeyNameValue != null) {
      map['apiConsumerDataEncryptionKeyName'] =
          apiConsumerDataEncryptionKeyNameValue;
    }
    final apiConsumerDataLocationValue = apiConsumerDataLocation;
    if (apiConsumerDataLocationValue != null) {
      map['apiConsumerDataLocation'] = apiConsumerDataLocationValue;
    }
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = attributesValue;
    }
    final authorizedNetworkValue = authorizedNetwork;
    if (authorizedNetworkValue != null) {
      map['authorizedNetwork'] = authorizedNetworkValue;
    }
    final billingTypeValue = billingType;
    if (billingTypeValue != null) {
      map['billingType'] =
          pulumi.Input.mapOptionalInputValue<OrganizationBillingType, String>(
              billingTypeValue, (value) => value.value);
    }
    final controlPlaneEncryptionKeyNameValue = controlPlaneEncryptionKeyName;
    if (controlPlaneEncryptionKeyNameValue != null) {
      map['controlPlaneEncryptionKeyName'] = controlPlaneEncryptionKeyNameValue;
    }
    final customerNameValue = customerName;
    if (customerNameValue != null) {
      map['customerName'] = customerNameValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disableVpcPeeringValue = disableVpcPeering;
    if (disableVpcPeeringValue != null) {
      map['disableVpcPeering'] = disableVpcPeeringValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['parent'] = parent;
    final portalDisabledValue = portalDisabled;
    if (portalDisabledValue != null) {
      map['portalDisabled'] = portalDisabledValue;
    }
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudApigeeV1Properties,
          Map<String, dynamic>>(propertiesValue, (value) => value.toMap());
    }
    final runtimeDatabaseEncryptionKeyNameValue =
        runtimeDatabaseEncryptionKeyName;
    if (runtimeDatabaseEncryptionKeyNameValue != null) {
      map['runtimeDatabaseEncryptionKeyName'] =
          runtimeDatabaseEncryptionKeyNameValue;
    }
    map['runtimeType'] =
        pulumi.Input.mapInputValue<OrganizationRuntimeType, String>(
            runtimeType_, (value) => value.value);
    final typeValue = type;
    if (typeValue != null) {
      map['type'] =
          pulumi.Input.mapOptionalInputValue<OrganizationType, String>(
              typeValue, (value) => value.value);
    }
    return map;
  }

  factory OrganizationArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationArgs(
      addonsConfig:
          pulumi.Input.asOptionalInput<GoogleCloudApigeeV1AddonsConfig>(
              map['addonsConfig']),
      analyticsRegion: pulumi.Input.asInput<String>(map['analyticsRegion']),
      apiConsumerDataEncryptionKeyName: pulumi.Input.asOptionalInput<String>(
          map['apiConsumerDataEncryptionKeyName']),
      apiConsumerDataLocation:
          pulumi.Input.asOptionalInput<String>(map['apiConsumerDataLocation']),
      attributes: pulumi.Input.asOptionalInput<List<String>>(map['attributes']),
      authorizedNetwork:
          pulumi.Input.asOptionalInput<String>(map['authorizedNetwork']),
      billingType: pulumi.Input.asOptionalInput<OrganizationBillingType>(
          map['billingType']),
      controlPlaneEncryptionKeyName: pulumi.Input.asOptionalInput<String>(
          map['controlPlaneEncryptionKeyName']),
      customerName: pulumi.Input.asOptionalInput<String>(map['customerName']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      disableVpcPeering:
          pulumi.Input.asOptionalInput<bool>(map['disableVpcPeering']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      parent: pulumi.Input.asInput<String>(map['parent']),
      portalDisabled: pulumi.Input.asOptionalInput<bool>(map['portalDisabled']),
      properties: pulumi.Input.asOptionalInput<GoogleCloudApigeeV1Properties>(
          map['properties']),
      runtimeDatabaseEncryptionKeyName: pulumi.Input.asOptionalInput<String>(
          map['runtimeDatabaseEncryptionKeyName']),
      runtimeType_:
          pulumi.Input.asInput<OrganizationRuntimeType>(map['runtimeType']),
      type: pulumi.Input.asOptionalInput<OrganizationType>(map['type']),
    );
  }
}
