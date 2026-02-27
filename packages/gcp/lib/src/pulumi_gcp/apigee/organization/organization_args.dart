// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../organization_properties/organization_properties.dart';

/// The set of arguments for Organization.
class OrganizationArgs {
  /// Primary GCP region for analytics data storage. For valid values, see [Create an Apigee organization](https://cloud.google.com/apigee/docs/api-platform/get-started/create-org).
  final Input<String>? analyticsRegion;

  /// Cloud KMS key name used for encrypting API consumer data.
  final Input<String>? apiConsumerDataEncryptionKeyName;

  /// This field is needed only for customers using non-default data residency regions.
  /// Apigee stores some control plane data only in single region.
  /// This field determines which single region Apigee should use.
  final Input<String>? apiConsumerDataLocation;

  /// Compute Engine network used for Service Networking to be peered with Apigee runtime instances.
  /// See [Getting started with the Service Networking API](https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started).
  /// Valid only when `RuntimeType` is set to CLOUD. The value can be updated only when there are no runtime instances. For example: "default".
  final Input<String>? authorizedNetwork;

  /// Billing type of the Apigee organization. See [Apigee pricing](https://cloud.google.com/apigee/pricing).
  final Input<String>? billingType;

  /// Cloud KMS key name used for encrypting control plane data that is stored in a multi region.
  /// Only used for the data residency region "US" or "EU".
  final Input<String>? controlPlaneEncryptionKeyName;

  /// Description of the Apigee organization.
  final Input<String>? description;

  /// Flag that specifies whether the VPC Peering through Private Google Access should be
  /// disabled between the consumer network and Apigee. Required if an `authorizedNetwork`
  /// on the consumer project is not provided, in which case the flag should be set to `true`.
  /// Valid only when `RuntimeType` is set to CLOUD. The value must be set before the creation
  /// of any Apigee runtime instance and can be updated only when there are no runtime instances.
  final Input<bool>? disableVpcPeering;

  /// The display name of the Apigee organization.
  final Input<String>? displayName;

  /// The project ID associated with the Apigee organization.
  final Input<String> projectId;

  /// Properties defined in the Apigee organization profile.
  /// Structure is documented below.
  final Input<OrganizationProperties>? properties;

  /// Optional. This setting is applicable only for organizations that are soft-deleted (i.e., BillingType
  /// is not EVALUATION). It controls how long Organization data will be retained after the initial delete
  /// operation completes. During this period, the Organization may be restored to its last known state.
  /// After this period, the Organization will no longer be able to be restored.
  /// Default value is `DELETION_RETENTION_UNSPECIFIED`.
  /// Possible values are: `DELETION_RETENTION_UNSPECIFIED`, `MINIMUM`.
  final Input<String>? retention;

  /// Cloud KMS key name used for encrypting the data that is stored and replicated across runtime instances.
  /// Update is not allowed after the organization is created.
  /// If not specified, a Google-Managed encryption key will be used.
  /// Valid only when `RuntimeType` is CLOUD. For example: `projects/foo/locations/us/keyRings/bar/cryptoKeys/baz`.
  final Input<String>? runtimeDatabaseEncryptionKeyName;

  /// Runtime type of the Apigee organization based on the Apigee subscription purchased.
  /// Default value is `CLOUD`.
  /// Possible values are: `CLOUD`, `HYBRID`.
  final Input<String>? runtimeType_;

  OrganizationArgs({
    this.analyticsRegion,
    this.apiConsumerDataEncryptionKeyName,
    this.apiConsumerDataLocation,
    this.authorizedNetwork,
    this.billingType,
    this.controlPlaneEncryptionKeyName,
    this.description,
    this.disableVpcPeering,
    this.displayName,
    required this.projectId,
    this.properties,
    this.retention,
    this.runtimeDatabaseEncryptionKeyName,
    this.runtimeType_,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final analyticsRegionValue = analyticsRegion;
    if (analyticsRegionValue != null) {
      map['analyticsRegion'] = analyticsRegionValue;
    }
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
    final authorizedNetworkValue = authorizedNetwork;
    if (authorizedNetworkValue != null) {
      map['authorizedNetwork'] = authorizedNetworkValue;
    }
    final billingTypeValue = billingType;
    if (billingTypeValue != null) {
      map['billingType'] = billingTypeValue;
    }
    final controlPlaneEncryptionKeyNameValue = controlPlaneEncryptionKeyName;
    if (controlPlaneEncryptionKeyNameValue != null) {
      map['controlPlaneEncryptionKeyName'] = controlPlaneEncryptionKeyNameValue;
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
    map['projectId'] = projectId;
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = Input.mapOptionalInputValue<OrganizationProperties,
          Map<String, dynamic>>(propertiesValue, (value) => value.toMap());
    }
    final retentionValue = retention;
    if (retentionValue != null) {
      map['retention'] = retentionValue;
    }
    final runtimeDatabaseEncryptionKeyNameValue =
        runtimeDatabaseEncryptionKeyName;
    if (runtimeDatabaseEncryptionKeyNameValue != null) {
      map['runtimeDatabaseEncryptionKeyName'] =
          runtimeDatabaseEncryptionKeyNameValue;
    }
    final runtimeType_Value = runtimeType_;
    if (runtimeType_Value != null) {
      map['runtimeType'] = runtimeType_Value;
    }
    return map;
  }

  factory OrganizationArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationArgs(
      analyticsRegion: Input.asOptionalInput<String>(map['analyticsRegion']),
      apiConsumerDataEncryptionKeyName: Input.asOptionalInput<String>(
          map['apiConsumerDataEncryptionKeyName']),
      apiConsumerDataLocation:
          Input.asOptionalInput<String>(map['apiConsumerDataLocation']),
      authorizedNetwork:
          Input.asOptionalInput<String>(map['authorizedNetwork']),
      billingType: Input.asOptionalInput<String>(map['billingType']),
      controlPlaneEncryptionKeyName:
          Input.asOptionalInput<String>(map['controlPlaneEncryptionKeyName']),
      description: Input.asOptionalInput<String>(map['description']),
      disableVpcPeering: Input.asOptionalInput<bool>(map['disableVpcPeering']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      projectId: Input.asInput<String>(map['projectId']),
      properties:
          Input.asOptionalInput<OrganizationProperties>(map['properties']),
      retention: Input.asOptionalInput<String>(map['retention']),
      runtimeDatabaseEncryptionKeyName: Input.asOptionalInput<String>(
          map['runtimeDatabaseEncryptionKeyName']),
      runtimeType_: Input.asOptionalInput<String>(map['runtimeType']),
    );
  }
}
