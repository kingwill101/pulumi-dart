// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_assuredworkloads_v1beta1_workload_cjissettings.dart';
import 'google_cloud_assuredworkloads_v1beta1_workload_fedramp_high_settings.dart';
import 'google_cloud_assuredworkloads_v1beta1_workload_fedramp_moderate_settings.dart';
import 'google_cloud_assuredworkloads_v1beta1_workload_il4_settings.dart';
import 'google_cloud_assuredworkloads_v1beta1_workload_kmssettings.dart';
import 'google_cloud_assuredworkloads_v1beta1_workload_partner_permissions.dart';
import 'google_cloud_assuredworkloads_v1beta1_workload_resource_settings.dart';
import 'workload_compliance_regime2.dart';
import 'workload_partner2.dart';

/// The set of arguments for Workload.
class WorkloadArgs2 {
  /// Optional. The billing account used for the resources which are direct children of workload. This billing account is initially associated with the resources created as part of Workload creation. After the initial creation of these resources, the customer can change the assigned billing account. The resource name has the form `billingAccounts/{billing_account_id}`. For example, `billingAccounts/012345-567890-ABCDEF`.
  final Input<String>? billingAccount;

  /// Input only. Immutable. Settings specific to resources needed for CJIS.
  final Input<GoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings>?
      cjisSettings;

  /// Immutable. Compliance Regime associated with this workload.
  final Input<WorkloadComplianceRegime2> complianceRegime;

  /// The user-assigned display name of the Workload. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, and spaces. Example: My Workload
  final Input<String> displayName;

  /// Optional. Indicates the sovereignty status of the given workload. Currently meant to be used by Europe/Canada customers.
  final Input<bool>? enableSovereignControls;

  /// Optional. ETag of the workload, it is calculated on the basis of the Workload contents. It will be used in Update & Delete operations.
  final Input<String>? etag;

  /// Optional. A identifier associated with the workload and underlying projects which allows for the break down of billing costs for a workload. The value provided for the identifier will add a label to the workload and contained projects with the identifier as the value.
  final Input<String>? externalId;

  /// Input only. Immutable. Settings specific to resources needed for FedRAMP High.
  final Input<GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings>?
      fedrampHighSettings;

  /// Input only. Immutable. Settings specific to resources needed for FedRAMP Moderate.
  final Input<
          GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings>?
      fedrampModerateSettings;

  /// Input only. Immutable. Settings specific to resources needed for IL4.
  final Input<GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings>?
      il4Settings;

  /// Input only. Settings used to create a CMEK crypto key. When set, a project with a KMS CMEK key is provisioned. This field is deprecated as of Feb 28, 2022. In order to create a Keyring, callers should specify, ENCRYPTION_KEYS_PROJECT or KEYRING in ResourceSettings.resource_type field.
  final Input<GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings>?
      kmsSettings;

  /// Optional. Labels applied to the workload.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Optional. The resource name of the workload. Format: organizations/{organization}/locations/{location}/workloads/{workload} Read-only.
  final Input<String>? name;
  final Input<String> organizationId;

  /// Optional. Partner regime associated with this workload.
  final Input<WorkloadPartner2>? partner;

  /// Optional. Permissions granted to the AW Partner SA account for the customer workload
  final Input<GoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions>?
      partnerPermissions;

  /// Input only. The parent resource for the resources managed by this Assured Workload. May be either empty or a folder resource which is a child of the Workload parent. If not specified all resources are created under the parent organization. Format: folders/{folder_id}
  final Input<String>? provisionedResourcesParent;

  /// Input only. Resource properties that are used to customize workload resources. These properties (such as custom project id) will be used to create workload resources if possible. This field is optional.
  final Input<List<GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings>>?
      resourceSettings;

  /// Optional. Indicates whether the e-mail notification for a violation is enabled for a workload. This value will be by default True, and if not present will be considered as true. This should only be updated via updateWorkload call. Any Changes to this field during the createWorkload call will not be honored. This will always be true while creating the workload.
  final Input<bool>? violationNotificationsEnabled;

  WorkloadArgs2({
    this.billingAccount,
    this.cjisSettings,
    required this.complianceRegime,
    required this.displayName,
    this.enableSovereignControls,
    this.etag,
    this.externalId,
    this.fedrampHighSettings,
    this.fedrampModerateSettings,
    this.il4Settings,
    this.kmsSettings,
    this.labels,
    this.location,
    this.name,
    required this.organizationId,
    this.partner,
    this.partnerPermissions,
    this.provisionedResourcesParent,
    this.resourceSettings,
    this.violationNotificationsEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final billingAccountValue = billingAccount;
    if (billingAccountValue != null) {
      map['billingAccount'] = billingAccountValue;
    }
    final cjisSettingsValue = cjisSettings;
    if (cjisSettingsValue != null) {
      map['cjisSettings'] = Input.mapOptionalInputValue<
          GoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings,
          Map<String, dynamic>>(cjisSettingsValue, (value) => value.toMap());
    }
    map['complianceRegime'] =
        Input.mapInputValue<WorkloadComplianceRegime2, String>(
            complianceRegime, (value) => value.value);
    map['displayName'] = displayName;
    final enableSovereignControlsValue = enableSovereignControls;
    if (enableSovereignControlsValue != null) {
      map['enableSovereignControls'] = enableSovereignControlsValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final externalIdValue = externalId;
    if (externalIdValue != null) {
      map['externalId'] = externalIdValue;
    }
    final fedrampHighSettingsValue = fedrampHighSettings;
    if (fedrampHighSettingsValue != null) {
      map['fedrampHighSettings'] = Input.mapOptionalInputValue<
              GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings,
              Map<String, dynamic>>(
          fedrampHighSettingsValue, (value) => value.toMap());
    }
    final fedrampModerateSettingsValue = fedrampModerateSettings;
    if (fedrampModerateSettingsValue != null) {
      map['fedrampModerateSettings'] = Input.mapOptionalInputValue<
              GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings,
              Map<String, dynamic>>(
          fedrampModerateSettingsValue, (value) => value.toMap());
    }
    final il4SettingsValue = il4Settings;
    if (il4SettingsValue != null) {
      map['il4Settings'] = Input.mapOptionalInputValue<
          GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings,
          Map<String, dynamic>>(il4SettingsValue, (value) => value.toMap());
    }
    final kmsSettingsValue = kmsSettings;
    if (kmsSettingsValue != null) {
      map['kmsSettings'] = Input.mapOptionalInputValue<
          GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings,
          Map<String, dynamic>>(kmsSettingsValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['organizationId'] = organizationId;
    final partnerValue = partner;
    if (partnerValue != null) {
      map['partner'] = Input.mapOptionalInputValue<WorkloadPartner2, String>(
          partnerValue, (value) => value.value);
    }
    final partnerPermissionsValue = partnerPermissions;
    if (partnerPermissionsValue != null) {
      map['partnerPermissions'] = Input.mapOptionalInputValue<
              GoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions,
              Map<String, dynamic>>(
          partnerPermissionsValue, (value) => value.toMap());
    }
    final provisionedResourcesParentValue = provisionedResourcesParent;
    if (provisionedResourcesParentValue != null) {
      map['provisionedResourcesParent'] = provisionedResourcesParentValue;
    }
    final resourceSettingsValue = resourceSettings;
    if (resourceSettingsValue != null) {
      map['resourceSettings'] = Input.mapOptionalInputValue<
              List<GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings>,
              List<Map<String, dynamic>>>(
          resourceSettingsValue,
          (value) => Input.encodeList<
              GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final violationNotificationsEnabledValue = violationNotificationsEnabled;
    if (violationNotificationsEnabledValue != null) {
      map['violationNotificationsEnabled'] = violationNotificationsEnabledValue;
    }
    return map;
  }

  factory WorkloadArgs2.fromMap(Map<String, dynamic> map) {
    return WorkloadArgs2(
      billingAccount: Input.asOptionalInput<String>(map['billingAccount']),
      cjisSettings: Input.asOptionalInput<
              GoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings>(
          map['cjisSettings']),
      complianceRegime:
          Input.asInput<WorkloadComplianceRegime2>(map['complianceRegime']),
      displayName: Input.asInput<String>(map['displayName']),
      enableSovereignControls:
          Input.asOptionalInput<bool>(map['enableSovereignControls']),
      etag: Input.asOptionalInput<String>(map['etag']),
      externalId: Input.asOptionalInput<String>(map['externalId']),
      fedrampHighSettings: Input.asOptionalInput<
              GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings>(
          map['fedrampHighSettings']),
      fedrampModerateSettings: Input.asOptionalInput<
              GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings>(
          map['fedrampModerateSettings']),
      il4Settings: Input.asOptionalInput<
              GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings>(
          map['il4Settings']),
      kmsSettings: Input.asOptionalInput<
              GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings>(
          map['kmsSettings']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      organizationId: Input.asInput<String>(map['organizationId']),
      partner: Input.asOptionalInput<WorkloadPartner2>(map['partner']),
      partnerPermissions: Input.asOptionalInput<
              GoogleCloudAssuredworkloadsV1beta1WorkloadPartnerPermissions>(
          map['partnerPermissions']),
      provisionedResourcesParent:
          Input.asOptionalInput<String>(map['provisionedResourcesParent']),
      resourceSettings: Input.asOptionalInput<
              List<GoogleCloudAssuredworkloadsV1beta1WorkloadResourceSettings>>(
          map['resourceSettings']),
      violationNotificationsEnabled:
          Input.asOptionalInput<bool>(map['violationNotificationsEnabled']),
    );
  }
}
