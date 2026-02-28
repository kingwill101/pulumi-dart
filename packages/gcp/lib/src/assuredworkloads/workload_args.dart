// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_kms_settings.dart';
import 'workload_partner_permissions.dart';
import 'workload_resource_setting.dart';
import 'workload_workload_options.dart';

/// {@template pulumi_assuredworkloads_workload_workload_args_doc}
/// The set of arguments for Workload.
/// {@endtemplate}
/// {@macro pulumi_assuredworkloads_workload_workload_args_doc}
class WorkloadArgs {
  /// Optional. Input only. The billing account used for the resources which are direct children of workload. This billing account is initially associated with the resources created as part of Workload creation. After the initial creation of these resources, the customer can change the assigned billing account. The resource name has the form `billingAccounts/{billing_account_id}`. For example, `billingAccounts/012345-567890-ABCDEF`.
  final pulumi.Input<String>? billingAccount;
  /// Required. Immutable. Compliance Regime associated with this workload. Possible values: COMPLIANCE_REGIME_UNSPECIFIED, IL4, CJIS, FEDRAMP_HIGH, FEDRAMP_MODERATE, US_REGIONAL_ACCESS, HIPAA, HITRUST, EU_REGIONS_AND_SUPPORT, CA_REGIONS_AND_SUPPORT, ITAR, AU_REGIONS_AND_US_SUPPORT, ASSURED_WORKLOADS_FOR_PARTNERS, ISR_REGIONS, ISR_REGIONS_AND_SUPPORT, CA_PROTECTED_B, IL5, IL2, JP_REGIONS_AND_SUPPORT, KSA_REGIONS_AND_SUPPORT_WITH_SOVEREIGNTY_CONTROLS, REGIONAL_CONTROLS, HEALTHCARE_AND_LIFE_SCIENCES_CONTROLS, HEALTHCARE_AND_LIFE_SCIENCES_CONTROLS_US_SUPPORT, IRS_1075
  final pulumi.Input<String> complianceRegime;
  /// Required. The user-assigned display name of the Workload. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, and spaces. Example: My Workload
  final pulumi.Input<String> displayName;
  /// Optional. Indicates the sovereignty status of the given workload. Currently meant to be used by Europe/Canada customers.
  final pulumi.Input<bool>? enableSovereignControls;
  /// **DEPRECATED** Input only. Settings used to create a CMEK crypto key. When set, a project with a KMS CMEK key is provisioned. This field is deprecated as of Feb 28, 2022. In order to create a Keyring, callers should specify, ENCRYPTION_KEYS_PROJECT or KEYRING in ResourceSettings.resource_type field.
  final pulumi.Input<WorkloadKmsSettings>? kmsSettings;
  /// Optional. Labels applied to the workload.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location for the resource
  final pulumi.Input<String> location;
  /// The organization for the resource
  ///
  ///
  ///
  /// - - -
  final pulumi.Input<String> organization;
  /// Optional. Partner regime associated with this workload. Possible values: PARTNER_UNSPECIFIED, LOCAL_CONTROLS_BY_S3NS, SOVEREIGN_CONTROLS_BY_T_SYSTEMS, SOVEREIGN_CONTROLS_BY_SIA_MINSAIT, SOVEREIGN_CONTROLS_BY_PSN, SOVEREIGN_CONTROLS_BY_CNTXT, SOVEREIGN_CONTROLS_BY_CNTXT_NO_EKM
  final pulumi.Input<String>? partner;
  /// Optional. Permissions granted to the AW Partner SA account for the customer workload
  final pulumi.Input<WorkloadPartnerPermissions>? partnerPermissions;
  /// Optional. Input only. Billing account necessary for purchasing services from Sovereign Partners. This field is required for creating SIA/PSN/CNTXT partner workloads. The caller should have 'billing.resourceAssociations.create' IAM permission on this billing-account. The format of this string is billingAccounts/AAAAAA-BBBBBB-CCCCCC.
  final pulumi.Input<String>? partnerServicesBillingAccount;
  /// Input only. The parent resource for the resources managed by this Assured Workload. May be either empty or a folder resource which is a child of the Workload parent. If not specified all resources are created under the parent organization. Format: folders/{folder_id}
  final pulumi.Input<String>? provisionedResourcesParent;
  /// Input only. Resource properties that are used to customize workload resources. These properties (such as custom project id) will be used to create workload resources if possible. This field is optional.
  final pulumi.Input<List<WorkloadResourceSetting>>? resourceSettings;
  /// Optional. Indicates whether the e-mail notification for a violation is enabled for a workload. This value will be by default True, and if not present will be considered as true. This should only be updated via updateWorkload call. Any Changes to this field during the createWorkload call will not be honored. This will always be true while creating the workload.
  final pulumi.Input<bool>? violationNotificationsEnabled;
  /// Optional. Used to specify certain options for a workload during workload creation - currently only supporting KAT Optionality for Regional Controls workloads.
  final pulumi.Input<WorkloadWorkloadOptions>? workloadOptions;

  /// Creates a new [WorkloadArgs].
  /// [billingAccount] Optional. Input only. The billing account used for the resources which are direct children of workload. This billing account is initially associated with the resources created as part of Workload creation. After the initial creation of these resources, the customer can change the assigned billing account. The resource name has the form `billingAccounts/{billing_account_id}`. For example, `billingAccounts/012345-567890-ABCDEF`.
  /// [complianceRegime] Required. Immutable. Compliance Regime associated with this workload. Possible values: COMPLIANCE_REGIME_UNSPECIFIED, IL4, CJIS, FEDRAMP_HIGH, FEDRAMP_MODERATE, US_REGIONAL_ACCESS, HIPAA, HITRUST, EU_REGIONS_AND_SUPPORT, CA_REGIONS_AND_SUPPORT, ITAR, AU_REGIONS_AND_US_SUPPORT, ASSURED_WORKLOADS_FOR_PARTNERS, ISR_REGIONS, ISR_REGIONS_AND_SUPPORT, CA_PROTECTED_B, IL5, IL2, JP_REGIONS_AND_SUPPORT, KSA_REGIONS_AND_SUPPORT_WITH_SOVEREIGNTY_CONTROLS, REGIONAL_CONTROLS, HEALTHCARE_AND_LIFE_SCIENCES_CONTROLS, HEALTHCARE_AND_LIFE_SCIENCES_CONTROLS_US_SUPPORT, IRS_1075
  /// [displayName] Required. The user-assigned display name of the Workload. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, and spaces. Example: My Workload
  /// [enableSovereignControls] Optional. Indicates the sovereignty status of the given workload. Currently meant to be used by Europe/Canada customers.
  /// [kmsSettings] **DEPRECATED** Input only. Settings used to create a CMEK crypto key. When set, a project with a KMS CMEK key is provisioned. This field is deprecated as of Feb 28, 2022. In order to create a Keyring, callers should specify, ENCRYPTION_KEYS_PROJECT or KEYRING in ResourceSettings.resource_type field.
  /// [labels] Optional. Labels applied to the workload.
  /// [location] The location for the resource
  /// [organization] The organization for the resource
  /// [partner] Optional. Partner regime associated with this workload. Possible values: PARTNER_UNSPECIFIED, LOCAL_CONTROLS_BY_S3NS, SOVEREIGN_CONTROLS_BY_T_SYSTEMS, SOVEREIGN_CONTROLS_BY_SIA_MINSAIT, SOVEREIGN_CONTROLS_BY_PSN, SOVEREIGN_CONTROLS_BY_CNTXT, SOVEREIGN_CONTROLS_BY_CNTXT_NO_EKM
  /// [partnerPermissions] Optional. Permissions granted to the AW Partner SA account for the customer workload
  /// [partnerServicesBillingAccount] Optional. Input only. Billing account necessary for purchasing services from Sovereign Partners. This field is required for creating SIA/PSN/CNTXT partner workloads. The caller should have 'billing.resourceAssociations.create' IAM permission on this billing-account. The format of this string is billingAccounts/AAAAAA-BBBBBB-CCCCCC.
  /// [provisionedResourcesParent] Input only. The parent resource for the resources managed by this Assured Workload. May be either empty or a folder resource which is a child of the Workload parent. If not specified all resources are created under the parent organization. Format: folders/{folder_id}
  /// [resourceSettings] Input only. Resource properties that are used to customize workload resources. These properties (such as custom project id) will be used to create workload resources if possible. This field is optional.
  /// [violationNotificationsEnabled] Optional. Indicates whether the e-mail notification for a violation is enabled for a workload. This value will be by default True, and if not present will be considered as true. This should only be updated via updateWorkload call. Any Changes to this field during the createWorkload call will not be honored. This will always be true while creating the workload.
  /// [workloadOptions] Optional. Used to specify certain options for a workload during workload creation - currently only supporting KAT Optionality for Regional Controls workloads.
  WorkloadArgs({
    String? billingAccount,
    required String complianceRegime,
    required String displayName,
    bool? enableSovereignControls,
    WorkloadKmsSettings? kmsSettings,
    Map<String, String>? labels,
    required String location,
    required String organization,
    String? partner,
    WorkloadPartnerPermissions? partnerPermissions,
    String? partnerServicesBillingAccount,
    String? provisionedResourcesParent,
    List<WorkloadResourceSetting>? resourceSettings,
    bool? violationNotificationsEnabled,
    WorkloadWorkloadOptions? workloadOptions,
  }) :
      billingAccount = pulumi.Input.asOptionalInput<String>(billingAccount),
      complianceRegime = pulumi.Input.asInput<String>(complianceRegime),
      displayName = pulumi.Input.asInput<String>(displayName),
      enableSovereignControls = pulumi.Input.asOptionalInput<bool>(enableSovereignControls),
      kmsSettings = pulumi.Input.asOptionalInput<WorkloadKmsSettings>(kmsSettings),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      organization = pulumi.Input.asInput<String>(organization),
      partner = pulumi.Input.asOptionalInput<String>(partner),
      partnerPermissions = pulumi.Input.asOptionalInput<WorkloadPartnerPermissions>(partnerPermissions),
      partnerServicesBillingAccount = pulumi.Input.asOptionalInput<String>(partnerServicesBillingAccount),
      provisionedResourcesParent = pulumi.Input.asOptionalInput<String>(provisionedResourcesParent),
      resourceSettings = pulumi.Input.asOptionalInput<List<WorkloadResourceSetting>>(resourceSettings),
      violationNotificationsEnabled = pulumi.Input.asOptionalInput<bool>(violationNotificationsEnabled),
      workloadOptions = pulumi.Input.asOptionalInput<WorkloadWorkloadOptions>(workloadOptions);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccount': ?billingAccount,
      'complianceRegime': complianceRegime,
      'displayName': displayName,
      'enableSovereignControls': ?enableSovereignControls,
      'kmsSettings': ?pulumi.Input.mapOptionalInputValue<WorkloadKmsSettings, Map<String, dynamic>>(kmsSettings, (value) => value.toMap()),
      'labels': ?labels,
      'location': location,
      'organization': organization,
      'partner': ?partner,
      'partnerPermissions': ?pulumi.Input.mapOptionalInputValue<WorkloadPartnerPermissions, Map<String, dynamic>>(partnerPermissions, (value) => value.toMap()),
      'partnerServicesBillingAccount': ?partnerServicesBillingAccount,
      'provisionedResourcesParent': ?provisionedResourcesParent,
      'resourceSettings': ?pulumi.Input.mapOptionalInputValue<List<WorkloadResourceSetting>, List<Map<String, dynamic>>>(resourceSettings, (value) => pulumi.Input.encodeList<WorkloadResourceSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'violationNotificationsEnabled': ?violationNotificationsEnabled,
      'workloadOptions': ?pulumi.Input.mapOptionalInputValue<WorkloadWorkloadOptions, Map<String, dynamic>>(workloadOptions, (value) => value.toMap()),
    };
  }

  factory WorkloadArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadArgs(
      billingAccount: map['billingAccount'] == null ? null : map['billingAccount'] as String,
      complianceRegime: map['complianceRegime'] as String,
      displayName: map['displayName'] as String,
      enableSovereignControls: map['enableSovereignControls'] == null ? null : map['enableSovereignControls'] as bool,
      kmsSettings: map['kmsSettings'] == null ? null : WorkloadKmsSettings.fromMap((map['kmsSettings'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      organization: map['organization'] as String,
      partner: map['partner'] == null ? null : map['partner'] as String,
      partnerPermissions: map['partnerPermissions'] == null ? null : WorkloadPartnerPermissions.fromMap((map['partnerPermissions'] as Map).cast<String, dynamic>()),
      partnerServicesBillingAccount: map['partnerServicesBillingAccount'] == null ? null : map['partnerServicesBillingAccount'] as String,
      provisionedResourcesParent: map['provisionedResourcesParent'] == null ? null : map['provisionedResourcesParent'] as String,
      resourceSettings: map['resourceSettings'] == null ? null : pulumi.Input.decodeList<WorkloadResourceSetting>(map['resourceSettings'], (value) => WorkloadResourceSetting.fromMap((value as Map).cast<String, dynamic>())),
      violationNotificationsEnabled: map['violationNotificationsEnabled'] == null ? null : map['violationNotificationsEnabled'] as bool,
      workloadOptions: map['workloadOptions'] == null ? null : WorkloadWorkloadOptions.fromMap((map['workloadOptions'] as Map).cast<String, dynamic>()),
    );
  }
}

