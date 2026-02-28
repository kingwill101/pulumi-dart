// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_assuredworkloads_v1_workload_kmssettings.dart';
import 'google_cloud_assuredworkloads_v1_workload_partner_permissions.dart';
import 'google_cloud_assuredworkloads_v1_workload_resource_settings.dart';
import 'workload_compliance_regime.dart';
import 'workload_partner.dart';

/// {@template pulumi_assuredworkloads_v1_workload_args_doc}
/// The set of arguments for Workload.
/// {@endtemplate}
/// {@macro pulumi_assuredworkloads_v1_workload_args_doc}
class WorkloadArgs {
  /// Optional. The billing account used for the resources which are direct children of workload. This billing account is initially associated with the resources created as part of Workload creation. After the initial creation of these resources, the customer can change the assigned billing account. The resource name has the form `billingAccounts/{billing_account_id}`. For example, `billingAccounts/012345-567890-ABCDEF`.
  final pulumi.Input<String>? billingAccount;
  /// Immutable. Compliance Regime associated with this workload.
  final pulumi.Input<WorkloadComplianceRegime> complianceRegime;
  /// The user-assigned display name of the Workload. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, and spaces. Example: My Workload
  final pulumi.Input<String> displayName;
  /// Optional. Indicates the sovereignty status of the given workload. Currently meant to be used by Europe/Canada customers.
  final pulumi.Input<bool>? enableSovereignControls;
  /// Optional. ETag of the workload, it is calculated on the basis of the Workload contents. It will be used in Update & Delete operations.
  final pulumi.Input<String>? etag;
  /// Optional. A identifier associated with the workload and underlying projects which allows for the break down of billing costs for a workload. The value provided for the identifier will add a label to the workload and contained projects with the identifier as the value.
  final pulumi.Input<String>? externalId;
  /// Input only. Settings used to create a CMEK crypto key. When set, a project with a KMS CMEK key is provisioned. This field is deprecated as of Feb 28, 2022. In order to create a Keyring, callers should specify, ENCRYPTION_KEYS_PROJECT or KEYRING in ResourceSettings.resource_type field.
  final pulumi.Input<GoogleCloudAssuredworkloadsV1WorkloadKMSSettings>? kmsSettings;
  /// Optional. Labels applied to the workload.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Optional. The resource name of the workload. Format: organizations/{organization}/locations/{location}/workloads/{workload} Read-only.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;
  /// Optional. Partner regime associated with this workload.
  final pulumi.Input<WorkloadPartner>? partner;
  /// Optional. Permissions granted to the AW Partner SA account for the customer workload
  final pulumi.Input<GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions>? partnerPermissions;
  /// Input only. The parent resource for the resources managed by this Assured Workload. May be either empty or a folder resource which is a child of the Workload parent. If not specified all resources are created under the parent organization. Format: folders/{folder_id}
  final pulumi.Input<String>? provisionedResourcesParent;
  /// Input only. Resource properties that are used to customize workload resources. These properties (such as custom project id) will be used to create workload resources if possible. This field is optional.
  final pulumi.Input<List<GoogleCloudAssuredworkloadsV1WorkloadResourceSettings>>? resourceSettings;
  /// Optional. Indicates whether the e-mail notification for a violation is enabled for a workload. This value will be by default True, and if not present will be considered as true. This should only be updated via updateWorkload call. Any Changes to this field during the createWorkload call will not be honored. This will always be true while creating the workload.
  final pulumi.Input<bool>? violationNotificationsEnabled;

  /// Creates a new [WorkloadArgs].
  /// [billingAccount] Optional. The billing account used for the resources which are direct children of workload. This billing account is initially associated with the resources created as part of Workload creation. After the initial creation of these resources, the customer can change the assigned billing account. The resource name has the form `billingAccounts/{billing_account_id}`. For example, `billingAccounts/012345-567890-ABCDEF`.
  /// [complianceRegime] Immutable. Compliance Regime associated with this workload.
  /// [displayName] The user-assigned display name of the Workload. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, and spaces. Example: My Workload
  /// [enableSovereignControls] Optional. Indicates the sovereignty status of the given workload. Currently meant to be used by Europe/Canada customers.
  /// [etag] Optional. ETag of the workload, it is calculated on the basis of the Workload contents. It will be used in Update & Delete operations.
  /// [externalId] Optional. A identifier associated with the workload and underlying projects which allows for the break down of billing costs for a workload. The value provided for the identifier will add a label to the workload and contained projects with the identifier as the value.
  /// [kmsSettings] Input only. Settings used to create a CMEK crypto key. When set, a project with a KMS CMEK key is provisioned. This field is deprecated as of Feb 28, 2022. In order to create a Keyring, callers should specify, ENCRYPTION_KEYS_PROJECT or KEYRING in ResourceSettings.resource_type field.
  /// [labels] Optional. Labels applied to the workload.
  /// [location] Optional.
  /// [name] Optional. The resource name of the workload. Format: organizations/{organization}/locations/{location}/workloads/{workload} Read-only.
  /// [organizationId] Required.
  /// [partner] Optional. Partner regime associated with this workload.
  /// [partnerPermissions] Optional. Permissions granted to the AW Partner SA account for the customer workload
  /// [provisionedResourcesParent] Input only. The parent resource for the resources managed by this Assured Workload. May be either empty or a folder resource which is a child of the Workload parent. If not specified all resources are created under the parent organization. Format: folders/{folder_id}
  /// [resourceSettings] Input only. Resource properties that are used to customize workload resources. These properties (such as custom project id) will be used to create workload resources if possible. This field is optional.
  /// [violationNotificationsEnabled] Optional. Indicates whether the e-mail notification for a violation is enabled for a workload. This value will be by default True, and if not present will be considered as true. This should only be updated via updateWorkload call. Any Changes to this field during the createWorkload call will not be honored. This will always be true while creating the workload.
  WorkloadArgs({
    String? billingAccount,
    required WorkloadComplianceRegime complianceRegime,
    required String displayName,
    bool? enableSovereignControls,
    String? etag,
    String? externalId,
    GoogleCloudAssuredworkloadsV1WorkloadKMSSettings? kmsSettings,
    Map<String, String>? labels,
    String? location,
    String? name,
    required String organizationId,
    WorkloadPartner? partner,
    GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions? partnerPermissions,
    String? provisionedResourcesParent,
    List<GoogleCloudAssuredworkloadsV1WorkloadResourceSettings>? resourceSettings,
    bool? violationNotificationsEnabled,
  }) :
      billingAccount = pulumi.Input.asOptionalInput<String>(billingAccount),
      complianceRegime = pulumi.Input.asInput<WorkloadComplianceRegime>(complianceRegime),
      displayName = pulumi.Input.asInput<String>(displayName),
      enableSovereignControls = pulumi.Input.asOptionalInput<bool>(enableSovereignControls),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      externalId = pulumi.Input.asOptionalInput<String>(externalId),
      kmsSettings = pulumi.Input.asOptionalInput<GoogleCloudAssuredworkloadsV1WorkloadKMSSettings>(kmsSettings),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      partner = pulumi.Input.asOptionalInput<WorkloadPartner>(partner),
      partnerPermissions = pulumi.Input.asOptionalInput<GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions>(partnerPermissions),
      provisionedResourcesParent = pulumi.Input.asOptionalInput<String>(provisionedResourcesParent),
      resourceSettings = pulumi.Input.asOptionalInput<List<GoogleCloudAssuredworkloadsV1WorkloadResourceSettings>>(resourceSettings),
      violationNotificationsEnabled = pulumi.Input.asOptionalInput<bool>(violationNotificationsEnabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccount': ?billingAccount,
      'complianceRegime': pulumi.Input.mapInputValue<WorkloadComplianceRegime, String>(complianceRegime, (value) => value.value),
      'displayName': displayName,
      'enableSovereignControls': ?enableSovereignControls,
      'etag': ?etag,
      'externalId': ?externalId,
      'kmsSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAssuredworkloadsV1WorkloadKMSSettings, Map<String, dynamic>>(kmsSettings, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'organizationId': organizationId,
      'partner': ?pulumi.Input.mapOptionalInputValue<WorkloadPartner, String>(partner, (value) => value.value),
      'partnerPermissions': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions, Map<String, dynamic>>(partnerPermissions, (value) => value.toMap()),
      'provisionedResourcesParent': ?provisionedResourcesParent,
      'resourceSettings': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudAssuredworkloadsV1WorkloadResourceSettings>, List<Map<String, dynamic>>>(resourceSettings, (value) => pulumi.Input.encodeList<GoogleCloudAssuredworkloadsV1WorkloadResourceSettings, Map<String, dynamic>>(value, (value) => value.toMap())),
      'violationNotificationsEnabled': ?violationNotificationsEnabled,
    };
  }

  factory WorkloadArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadArgs(
      billingAccount: map['billingAccount'] == null ? null : map['billingAccount'] as String,
      complianceRegime: WorkloadComplianceRegime.fromValue(map['complianceRegime'] as String),
      displayName: map['displayName'] as String,
      enableSovereignControls: map['enableSovereignControls'] == null ? null : map['enableSovereignControls'] as bool,
      etag: map['etag'] == null ? null : map['etag'] as String,
      externalId: map['externalId'] == null ? null : map['externalId'] as String,
      kmsSettings: map['kmsSettings'] == null ? null : GoogleCloudAssuredworkloadsV1WorkloadKMSSettings.fromMap((map['kmsSettings'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      organizationId: map['organizationId'] as String,
      partner: map['partner'] == null ? null : WorkloadPartner.fromValue(map['partner'] as String),
      partnerPermissions: map['partnerPermissions'] == null ? null : GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions.fromMap((map['partnerPermissions'] as Map).cast<String, dynamic>()),
      provisionedResourcesParent: map['provisionedResourcesParent'] == null ? null : map['provisionedResourcesParent'] as String,
      resourceSettings: map['resourceSettings'] == null ? null : pulumi.Input.decodeList<GoogleCloudAssuredworkloadsV1WorkloadResourceSettings>(map['resourceSettings'], (value) => GoogleCloudAssuredworkloadsV1WorkloadResourceSettings.fromMap((value as Map).cast<String, dynamic>())),
      violationNotificationsEnabled: map['violationNotificationsEnabled'] == null ? null : map['violationNotificationsEnabled'] as bool,
    );
  }
}

