// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_assuredworkloads_v1_workload_compliance_status_response.dart';
import 'google_cloud_assuredworkloads_v1_workload_ekm_provisioning_response_response.dart';
import 'google_cloud_assuredworkloads_v1_workload_kmssettings_response.dart';
import 'google_cloud_assuredworkloads_v1_workload_partner_permissions_response.dart';
import 'google_cloud_assuredworkloads_v1_workload_resource_info_response.dart';
import 'google_cloud_assuredworkloads_v1_workload_resource_settings_response.dart';
import 'google_cloud_assuredworkloads_v1_workload_saa_enrollment_response_response.dart';

/// Result data returned by getWorkload.
class GetWorkloadResult {
  /// Optional. The billing account used for the resources which are direct children of workload. This billing account is initially associated with the resources created as part of Workload creation. After the initial creation of these resources, the customer can change the assigned billing account. The resource name has the form `billingAccounts/{billing_account_id}`. For example, `billingAccounts/012345-567890-ABCDEF`.
  final String billingAccount;

  /// Immutable. Compliance Regime associated with this workload.
  final String complianceRegime;

  /// Count of active Violations in the Workload.
  final GoogleCloudAssuredworkloadsV1WorkloadComplianceStatusResponse
      complianceStatus;

  /// Urls for services which are compliant for this Assured Workload, but which are currently disallowed by the ResourceUsageRestriction org policy. Invoke RestrictAllowedResources endpoint to allow your project developers to use these services in their environment.
  final List<String> compliantButDisallowedServices;

  /// Immutable. The Workload creation timestamp.
  final String createTime;

  /// The user-assigned display name of the Workload. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, and spaces. Example: My Workload
  final String displayName;

  /// Represents the Ekm Provisioning State of the given workload.
  final GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponseResponse
      ekmProvisioningResponse;

  /// Optional. Indicates the sovereignty status of the given workload. Currently meant to be used by Europe/Canada customers.
  final bool enableSovereignControls;

  /// Optional. ETag of the workload, it is calculated on the basis of the Workload contents. It will be used in Update & Delete operations.
  final String etag;

  /// Represents the KAJ enrollment state of the given workload.
  final String kajEnrollmentState;

  /// Input only. Settings used to create a CMEK crypto key. When set, a project with a KMS CMEK key is provisioned. This field is deprecated as of Feb 28, 2022. In order to create a Keyring, callers should specify, ENCRYPTION_KEYS_PROJECT or KEYRING in ResourceSettings.resource_type field.
  final GoogleCloudAssuredworkloadsV1WorkloadKMSSettingsResponse kmsSettings;

  /// Optional. Labels applied to the workload.
  final Map<String, String> labels;

  /// Optional. The resource name of the workload. Format: organizations/{organization}/locations/{location}/workloads/{workload} Read-only.
  final String name;

  /// Optional. Partner regime associated with this workload.
  final String partner;

  /// Optional. Permissions granted to the AW Partner SA account for the customer workload
  final GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissionsResponse
      partnerPermissions;

  /// Input only. The parent resource for the resources managed by this Assured Workload. May be either empty or a folder resource which is a child of the Workload parent. If not specified all resources are created under the parent organization. Format: folders/{folder_id}
  final String provisionedResourcesParent;

  /// Indicates whether resource monitoring is enabled for workload or not. It is true when Resource feed is subscribed to AWM topic and AWM Service Agent Role is binded to AW Service Account for resource Assured workload.
  final bool resourceMonitoringEnabled;

  /// Input only. Resource properties that are used to customize workload resources. These properties (such as custom project id) will be used to create workload resources if possible. This field is optional.
  final List<GoogleCloudAssuredworkloadsV1WorkloadResourceSettingsResponse>
      resourceSettings;

  /// The resources associated with this workload. These resources will be created when creating the workload. If any of the projects already exist, the workload creation will fail. Always read only.
  final List<GoogleCloudAssuredworkloadsV1WorkloadResourceInfoResponse>
      resources;

  /// Represents the SAA enrollment response of the given workload. SAA enrollment response is queried during GetWorkload call. In failure cases, user friendly error message is shown in SAA details page.
  final GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponseResponse
      saaEnrollmentResponse;

  /// Optional. Indicates whether the e-mail notification for a violation is enabled for a workload. This value will be by default True, and if not present will be considered as true. This should only be updated via updateWorkload call. Any Changes to this field during the createWorkload call will not be honored. This will always be true while creating the workload.
  final bool violationNotificationsEnabled;

  GetWorkloadResult({
    required this.billingAccount,
    required this.complianceRegime,
    required this.complianceStatus,
    required this.compliantButDisallowedServices,
    required this.createTime,
    required this.displayName,
    required this.ekmProvisioningResponse,
    required this.enableSovereignControls,
    required this.etag,
    required this.kajEnrollmentState,
    required this.kmsSettings,
    required this.labels,
    required this.name,
    required this.partner,
    required this.partnerPermissions,
    required this.provisionedResourcesParent,
    required this.resourceMonitoringEnabled,
    required this.resourceSettings,
    required this.resources,
    required this.saaEnrollmentResponse,
    required this.violationNotificationsEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['billingAccount'] = billingAccount;
    map['complianceRegime'] = complianceRegime;
    map['complianceStatus'] = complianceStatus.toMap();
    map['compliantButDisallowedServices'] = compliantButDisallowedServices;
    map['createTime'] = createTime;
    map['displayName'] = displayName;
    map['ekmProvisioningResponse'] = ekmProvisioningResponse.toMap();
    map['enableSovereignControls'] = enableSovereignControls;
    map['etag'] = etag;
    map['kajEnrollmentState'] = kajEnrollmentState;
    map['kmsSettings'] = kmsSettings.toMap();
    map['labels'] = labels;
    map['name'] = name;
    map['partner'] = partner;
    map['partnerPermissions'] = partnerPermissions.toMap();
    map['provisionedResourcesParent'] = provisionedResourcesParent;
    map['resourceMonitoringEnabled'] = resourceMonitoringEnabled;
    map['resourceSettings'] = Input.encodeList<
        GoogleCloudAssuredworkloadsV1WorkloadResourceSettingsResponse,
        Map<String, dynamic>>(resourceSettings, (value) => value.toMap());
    map['resources'] = Input.encodeList<
        GoogleCloudAssuredworkloadsV1WorkloadResourceInfoResponse,
        Map<String, dynamic>>(resources, (value) => value.toMap());
    map['saaEnrollmentResponse'] = saaEnrollmentResponse.toMap();
    map['violationNotificationsEnabled'] = violationNotificationsEnabled;
    return map;
  }

  factory GetWorkloadResult.fromMap(Map<String, dynamic> map) {
    return GetWorkloadResult(
      billingAccount: map['billingAccount'] as String,
      complianceRegime: map['complianceRegime'] as String,
      complianceStatus:
          GoogleCloudAssuredworkloadsV1WorkloadComplianceStatusResponse.fromMap(
              (map['complianceStatus'] as Map).cast<String, dynamic>()),
      compliantButDisallowedServices:
          (map['compliantButDisallowedServices'] as List).cast<String>(),
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      ekmProvisioningResponse:
          GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponseResponse
              .fromMap((map['ekmProvisioningResponse'] as Map)
                  .cast<String, dynamic>()),
      enableSovereignControls: map['enableSovereignControls'] as bool,
      etag: map['etag'] as String,
      kajEnrollmentState: map['kajEnrollmentState'] as String,
      kmsSettings:
          GoogleCloudAssuredworkloadsV1WorkloadKMSSettingsResponse.fromMap(
              (map['kmsSettings'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      partner: map['partner'] as String,
      partnerPermissions:
          GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissionsResponse
              .fromMap(
                  (map['partnerPermissions'] as Map).cast<String, dynamic>()),
      provisionedResourcesParent: map['provisionedResourcesParent'] as String,
      resourceMonitoringEnabled: map['resourceMonitoringEnabled'] as bool,
      resourceSettings: Input.decodeList<
              GoogleCloudAssuredworkloadsV1WorkloadResourceSettingsResponse>(
          map['resourceSettings'],
          (value) =>
              GoogleCloudAssuredworkloadsV1WorkloadResourceSettingsResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
      resources: Input.decodeList<
              GoogleCloudAssuredworkloadsV1WorkloadResourceInfoResponse>(
          map['resources'],
          (value) =>
              GoogleCloudAssuredworkloadsV1WorkloadResourceInfoResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      saaEnrollmentResponse:
          GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponseResponse
              .fromMap((map['saaEnrollmentResponse'] as Map)
                  .cast<String, dynamic>()),
      violationNotificationsEnabled:
          map['violationNotificationsEnabled'] as bool,
    );
  }
}
