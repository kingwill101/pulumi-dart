import 'package:pulumi/pulumi.dart';
import '../organization_properties/organization_properties.dart';
import 'organization_args.dart';

/// An `Organization` is the top-level container in Apigee.
///
///
/// To get more information about Organization, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations)
/// * How-to Guides
/// * [Creating an API organization](https://cloud.google.com/apigee/docs/api-platform/get-started/create-org)
/// * Setting a custom endpoint (required for data residency)
///
/// ## Example Usage
///
/// ### Apigee Organization Cloud Basic
///
///
///
/// ### Apigee Organization Cloud Basic Disable Vpc Peering
///
///
///
/// ### Apigee Organization Cloud Basic Data Residency
///
///
///
/// ### Apigee Organization Cloud Full
///
///
///
/// ### Apigee Organization Cloud Full Disable Vpc Peering
///
///
///
///
/// ## Import
///
/// Organization can be imported using any of these accepted formats:
///
/// * `organizations/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Organization can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/organization:Organization default organizations/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/organization:Organization default {{name}}
/// ```
class Organization extends CustomResource {
  /// Primary GCP region for analytics data storage. For valid values, see [Create an Apigee organization](https://cloud.google.com/apigee/docs/api-platform/get-started/create-org).
  late final Output<String?> analyticsRegion;

  /// Cloud KMS key name used for encrypting API consumer data.
  late final Output<String?> apiConsumerDataEncryptionKeyName;

  /// This field is needed only for customers using non-default data residency regions.
  /// Apigee stores some control plane data only in single region.
  /// This field determines which single region Apigee should use.
  late final Output<String?> apiConsumerDataLocation;

  /// Output only. Project ID of the Apigee Tenant Project.
  late final Output<String> apigeeProjectId;

  /// Compute Engine network used for Service Networking to be peered with Apigee runtime instances.
  /// See [Getting started with the Service Networking API](https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started).
  /// Valid only when `RuntimeType` is set to CLOUD. The value can be updated only when there are no runtime instances. For example: "default".
  late final Output<String?> authorizedNetwork;

  /// Billing type of the Apigee organization. See [Apigee pricing](https://cloud.google.com/apigee/pricing).
  late final Output<String> billingType;

  /// Output only. Base64-encoded public certificate for the root CA of the Apigee organization.
  /// Valid only when `RuntimeType` is CLOUD. A base64-encoded string.
  late final Output<String> caCertificate;

  /// Cloud KMS key name used for encrypting control plane data that is stored in a multi region.
  /// Only used for the data residency region "US" or "EU".
  late final Output<String?> controlPlaneEncryptionKeyName;

  /// Description of the Apigee organization.
  late final Output<String?> description;

  /// Flag that specifies whether the VPC Peering through Private Google Access should be
  /// disabled between the consumer network and Apigee. Required if an `authorizedNetwork`
  /// on the consumer project is not provided, in which case the flag should be set to `true`.
  /// Valid only when `RuntimeType` is set to CLOUD. The value must be set before the creation
  /// of any Apigee runtime instance and can be updated only when there are no runtime instances.
  late final Output<bool?> disableVpcPeering;

  /// The display name of the Apigee organization.
  late final Output<String?> displayName;

  /// Output only. Name of the Apigee organization.
  late final Output<String> name;

  /// The project ID associated with the Apigee organization.
  late final Output<String> projectId;

  /// Properties defined in the Apigee organization profile.
  /// Structure is documented below.
  late final Output<OrganizationProperties> properties;

  /// Optional. This setting is applicable only for organizations that are soft-deleted (i.e., BillingType
  /// is not EVALUATION). It controls how long Organization data will be retained after the initial delete
  /// operation completes. During this period, the Organization may be restored to its last known state.
  /// After this period, the Organization will no longer be able to be restored.
  /// Default value is `DELETION_RETENTION_UNSPECIFIED`.
  /// Possible values are: `DELETION_RETENTION_UNSPECIFIED`, `MINIMUM`.
  late final Output<String?> retention;

  /// Cloud KMS key name used for encrypting the data that is stored and replicated across runtime instances.
  /// Update is not allowed after the organization is created.
  /// If not specified, a Google-Managed encryption key will be used.
  /// Valid only when `RuntimeType` is CLOUD. For example: `projects/foo/locations/us/keyRings/bar/cryptoKeys/baz`.
  late final Output<String?> runtimeDatabaseEncryptionKeyName;

  /// Runtime type of the Apigee organization based on the Apigee subscription purchased.
  /// Default value is `CLOUD`.
  /// Possible values are: `CLOUD`, `HYBRID`.
  late final Output<String?> runtimeType_;

  /// Output only. Subscription type of the Apigee organization.
  /// Valid values include trial (free, limited, and for evaluation purposes only) or paid (full subscription has been purchased).
  late final Output<String> subscriptionType;

  Organization(
    String name, {
    OrganizationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/organization:Organization',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.analyticsRegion = registerOutput<String?>('analyticsRegion');
    this.apiConsumerDataEncryptionKeyName =
        registerOutput<String?>('apiConsumerDataEncryptionKeyName');
    this.apiConsumerDataLocation =
        registerOutput<String?>('apiConsumerDataLocation');
    this.apigeeProjectId = registerOutput<String>('apigeeProjectId');
    this.authorizedNetwork = registerOutput<String?>('authorizedNetwork');
    this.billingType = registerOutput<String>('billingType');
    this.caCertificate = registerOutput<String>('caCertificate');
    this.controlPlaneEncryptionKeyName =
        registerOutput<String?>('controlPlaneEncryptionKeyName');
    this.description = registerOutput<String?>('description');
    this.disableVpcPeering = registerOutput<bool?>('disableVpcPeering');
    this.displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    this.projectId = registerOutput<String>('projectId');
    this.properties = registerOutput<OrganizationProperties>('properties');
    this.retention = registerOutput<String?>('retention');
    this.runtimeDatabaseEncryptionKeyName =
        registerOutput<String?>('runtimeDatabaseEncryptionKeyName');
    this.runtimeType_ = registerOutput<String?>('runtimeType');
    this.subscriptionType = registerOutput<String>('subscriptionType');
  }
}
