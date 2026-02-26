// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../workload_kms_settings/workload_kms_settings.dart';
import '../workload_partner_permissions/workload_partner_permissions.dart';
import '../workload_resource_setting/workload_resource_setting.dart';
import '../workload_workload_options/workload_workload_options.dart';

/// The set of arguments for Workload.
class WorkloadArgs2 {
  /// Optional. Input only. The billing account used for the resources which are direct children of workload. This billing account is initially associated with the resources created as part of Workload creation. After the initial creation of these resources, the customer can change the assigned billing account. The resource name has the form `billingAccounts/{billing_account_id}`. For example, `billingAccounts/012345-567890-ABCDEF`.
  final Input<String>? billingAccount;

  /// Required. Immutable. Compliance Regime associated with this workload. Possible values: COMPLIANCE_REGIME_UNSPECIFIED, IL4, CJIS, FEDRAMP_HIGH, FEDRAMP_MODERATE, US_REGIONAL_ACCESS, HIPAA, HITRUST, EU_REGIONS_AND_SUPPORT, CA_REGIONS_AND_SUPPORT, ITAR, AU_REGIONS_AND_US_SUPPORT, ASSURED_WORKLOADS_FOR_PARTNERS, ISR_REGIONS, ISR_REGIONS_AND_SUPPORT, CA_PROTECTED_B, IL5, IL2, JP_REGIONS_AND_SUPPORT, KSA_REGIONS_AND_SUPPORT_WITH_SOVEREIGNTY_CONTROLS, REGIONAL_CONTROLS, HEALTHCARE_AND_LIFE_SCIENCES_CONTROLS, HEALTHCARE_AND_LIFE_SCIENCES_CONTROLS_US_SUPPORT, IRS_1075
  final Input<String> complianceRegime;

  /// Required. The user-assigned display name of the Workload. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, and spaces. Example: My Workload
  final Input<String> displayName;

  /// Optional. Indicates the sovereignty status of the given workload. Currently meant to be used by Europe/Canada customers.
  final Input<bool>? enableSovereignControls;

  /// **DEPRECATED** Input only. Settings used to create a CMEK crypto key. When set, a project with a KMS CMEK key is provisioned. This field is deprecated as of Feb 28, 2022. In order to create a Keyring, callers should specify, ENCRYPTION_KEYS_PROJECT or KEYRING in ResourceSettings.resource_type field.
  final Input<WorkloadKmsSettings>? kmsSettings;

  /// Optional. Labels applied to the workload.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location for the resource
  final Input<String> location;

  /// The organization for the resource
  ///
  ///
  ///
  /// - - -
  final Input<String> organization;

  /// Optional. Partner regime associated with this workload. Possible values: PARTNER_UNSPECIFIED, LOCAL_CONTROLS_BY_S3NS, SOVEREIGN_CONTROLS_BY_T_SYSTEMS, SOVEREIGN_CONTROLS_BY_SIA_MINSAIT, SOVEREIGN_CONTROLS_BY_PSN, SOVEREIGN_CONTROLS_BY_CNTXT, SOVEREIGN_CONTROLS_BY_CNTXT_NO_EKM
  final Input<String>? partner;

  /// Optional. Permissions granted to the AW Partner SA account for the customer workload
  final Input<WorkloadPartnerPermissions>? partnerPermissions;

  /// Optional. Input only. Billing account necessary for purchasing services from Sovereign Partners. This field is required for creating SIA/PSN/CNTXT partner workloads. The caller should have 'billing.resourceAssociations.create' IAM permission on this billing-account. The format of this string is billingAccounts/AAAAAA-BBBBBB-CCCCCC.
  final Input<String>? partnerServicesBillingAccount;

  /// Input only. The parent resource for the resources managed by this Assured Workload. May be either empty or a folder resource which is a child of the Workload parent. If not specified all resources are created under the parent organization. Format: folders/{folder_id}
  final Input<String>? provisionedResourcesParent;

  /// Input only. Resource properties that are used to customize workload resources. These properties (such as custom project id) will be used to create workload resources if possible. This field is optional.
  final Input<List<WorkloadResourceSetting>>? resourceSettings;

  /// Optional. Indicates whether the e-mail notification for a violation is enabled for a workload. This value will be by default True, and if not present will be considered as true. This should only be updated via updateWorkload call. Any Changes to this field during the createWorkload call will not be honored. This will always be true while creating the workload.
  final Input<bool>? violationNotificationsEnabled;

  /// Optional. Used to specify certain options for a workload during workload creation - currently only supporting KAT Optionality for Regional Controls workloads.
  final Input<WorkloadWorkloadOptions>? workloadOptions;

  WorkloadArgs2({
    this.billingAccount,
    required this.complianceRegime,
    required this.displayName,
    this.enableSovereignControls,
    this.kmsSettings,
    this.labels,
    required this.location,
    required this.organization,
    this.partner,
    this.partnerPermissions,
    this.partnerServicesBillingAccount,
    this.provisionedResourcesParent,
    this.resourceSettings,
    this.violationNotificationsEnabled,
    this.workloadOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final billingAccountValue = billingAccount;
    if (billingAccountValue != null) {
      map['billingAccount'] = billingAccountValue;
    }
    map['complianceRegime'] = complianceRegime;
    map['displayName'] = displayName;
    final enableSovereignControlsValue = enableSovereignControls;
    if (enableSovereignControlsValue != null) {
      map['enableSovereignControls'] = enableSovereignControlsValue;
    }
    final kmsSettingsValue = kmsSettings;
    if (kmsSettingsValue != null) {
      map['kmsSettings'] = Input.mapOptionalInputValue<WorkloadKmsSettings,
          Map<String, dynamic>>(kmsSettingsValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    map['organization'] = organization;
    final partnerValue = partner;
    if (partnerValue != null) {
      map['partner'] = partnerValue;
    }
    final partnerPermissionsValue = partnerPermissions;
    if (partnerPermissionsValue != null) {
      map['partnerPermissions'] = Input.mapOptionalInputValue<
              WorkloadPartnerPermissions, Map<String, dynamic>>(
          partnerPermissionsValue, (value) => value.toMap());
    }
    final partnerServicesBillingAccountValue = partnerServicesBillingAccount;
    if (partnerServicesBillingAccountValue != null) {
      map['partnerServicesBillingAccount'] = partnerServicesBillingAccountValue;
    }
    final provisionedResourcesParentValue = provisionedResourcesParent;
    if (provisionedResourcesParentValue != null) {
      map['provisionedResourcesParent'] = provisionedResourcesParentValue;
    }
    final resourceSettingsValue = resourceSettings;
    if (resourceSettingsValue != null) {
      map['resourceSettings'] = Input.mapOptionalInputValue<
              List<WorkloadResourceSetting>, List<Map<String, dynamic>>>(
          resourceSettingsValue,
          (value) =>
              Input.encodeList<WorkloadResourceSetting, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final violationNotificationsEnabledValue = violationNotificationsEnabled;
    if (violationNotificationsEnabledValue != null) {
      map['violationNotificationsEnabled'] = violationNotificationsEnabledValue;
    }
    final workloadOptionsValue = workloadOptions;
    if (workloadOptionsValue != null) {
      map['workloadOptions'] = Input.mapOptionalInputValue<
          WorkloadWorkloadOptions,
          Map<String, dynamic>>(workloadOptionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory WorkloadArgs2.fromMap(Map<String, dynamic> map) {
    return WorkloadArgs2(
      billingAccount: Input.asOptionalInput<String>(map['billingAccount']),
      complianceRegime: Input.asInput<String>(map['complianceRegime']),
      displayName: Input.asInput<String>(map['displayName']),
      enableSovereignControls:
          Input.asOptionalInput<bool>(map['enableSovereignControls']),
      kmsSettings:
          Input.asOptionalInput<WorkloadKmsSettings>(map['kmsSettings']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      organization: Input.asInput<String>(map['organization']),
      partner: Input.asOptionalInput<String>(map['partner']),
      partnerPermissions: Input.asOptionalInput<WorkloadPartnerPermissions>(
          map['partnerPermissions']),
      partnerServicesBillingAccount:
          Input.asOptionalInput<String>(map['partnerServicesBillingAccount']),
      provisionedResourcesParent:
          Input.asOptionalInput<String>(map['provisionedResourcesParent']),
      resourceSettings: Input.asOptionalInput<List<WorkloadResourceSetting>>(
          map['resourceSettings']),
      violationNotificationsEnabled:
          Input.asOptionalInput<bool>(map['violationNotificationsEnabled']),
      workloadOptions: Input.asOptionalInput<WorkloadWorkloadOptions>(
          map['workloadOptions']),
    );
  }
}
