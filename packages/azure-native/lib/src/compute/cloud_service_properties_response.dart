// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_service_extension_profile_response.dart';
import 'cloud_service_network_profile_response.dart';
import 'cloud_service_os_profile_response.dart';
import 'cloud_service_role_profile_response.dart';

/// Cloud service properties
class CloudServicePropertiesResponse {
  /// (Optional) Indicates whether the role sku properties (roleProfile.roles.sku) specified in the model/template should override the role instance count and vm size specified in the .cscfg and .csdef respectively.
  /// The default value is `false`.
  final bool? allowModelOverride;
  /// Specifies the XML service configuration (.cscfg) for the cloud service.
  final String? configuration;
  /// Specifies a URL that refers to the location of the service configuration in the Blob service. The service package URL  can be Shared Access Signature (SAS) URI from any storage account.
  /// This is a write-only property and is not returned in GET calls.
  final String? configurationUrl;
  /// Describes a cloud service extension profile.
  final CloudServiceExtensionProfileResponse? extensionProfile;
  /// Network Profile for the cloud service.
  final CloudServiceNetworkProfileResponse? networkProfile;
  /// Describes the OS profile for the cloud service.
  final CloudServiceOsProfileResponse? osProfile;
  /// Specifies a URL that refers to the location of the service package in the Blob service. The service package URL can be Shared Access Signature (SAS) URI from any storage account.
  /// This is a write-only property and is not returned in GET calls.
  final String? packageUrl;
  /// The provisioning state, which only appears in the response.
  final String provisioningState;
  /// Describes the role profile for the cloud service.
  final CloudServiceRoleProfileResponse? roleProfile;
  /// (Optional) Indicates whether to start the cloud service immediately after it is created. The default value is `true`.
  /// If false, the service model is still deployed, but the code is not run immediately. Instead, the service is PoweredOff until you call Start, at which time the service will be started. A deployed service still incurs charges, even if it is poweredoff.
  final bool? startCloudService;
  /// The unique identifier for the cloud service.
  final String uniqueId;
  /// Update mode for the cloud service. Role instances are allocated to update domains when the service is deployed. Updates can be initiated manually in each update domain or initiated automatically in all update domains.
  /// Possible Values are <br /><br />**Auto**<br /><br />**Manual** <br /><br />**Simultaneous**<br /><br />
  /// If not specified, the default value is Auto. If set to Manual, PUT UpdateDomain must be called to apply the update. If set to Auto, the update is automatically applied to each update domain in sequence.
  final String? upgradeMode;

  /// Creates a new [CloudServicePropertiesResponse].
  /// [allowModelOverride] (Optional) Indicates whether the role sku properties (roleProfile.roles.sku) specified in the model/template should override the role instance count and vm size specified in the .cscfg and .csdef respectively.
  /// [configuration] Specifies the XML service configuration (.cscfg) for the cloud service.
  /// [configurationUrl] Specifies a URL that refers to the location of the service configuration in the Blob service. The service package URL  can be Shared Access Signature (SAS) URI from any storage account.
  /// [extensionProfile] Describes a cloud service extension profile.
  /// [networkProfile] Network Profile for the cloud service.
  /// [osProfile] Describes the OS profile for the cloud service.
  /// [packageUrl] Specifies a URL that refers to the location of the service package in the Blob service. The service package URL can be Shared Access Signature (SAS) URI from any storage account.
  /// [provisioningState] The provisioning state, which only appears in the response.
  /// [roleProfile] Describes the role profile for the cloud service.
  /// [startCloudService] (Optional) Indicates whether to start the cloud service immediately after it is created. The default value is `true`.
  /// [uniqueId] The unique identifier for the cloud service.
  /// [upgradeMode] Update mode for the cloud service. Role instances are allocated to update domains when the service is deployed. Updates can be initiated manually in each update domain or initiated automatically in all update domains.
  CloudServicePropertiesResponse({
    this.allowModelOverride,
    this.configuration,
    this.configurationUrl,
    this.extensionProfile,
    this.networkProfile,
    this.osProfile,
    this.packageUrl,
    required this.provisioningState,
    this.roleProfile,
    this.startCloudService,
    required this.uniqueId,
    this.upgradeMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowModelOverride': ?allowModelOverride,
      'configuration': ?configuration,
      'configurationUrl': ?configurationUrl,
      'extensionProfile': ?extensionProfile == null ? null : extensionProfile!.toMap(),
      'networkProfile': ?networkProfile == null ? null : networkProfile!.toMap(),
      'osProfile': ?osProfile == null ? null : osProfile!.toMap(),
      'packageUrl': ?packageUrl,
      'provisioningState': provisioningState,
      'roleProfile': ?roleProfile == null ? null : roleProfile!.toMap(),
      'startCloudService': ?startCloudService,
      'uniqueId': uniqueId,
      'upgradeMode': ?upgradeMode,
    };
  }

  factory CloudServicePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CloudServicePropertiesResponse(
      allowModelOverride: map['allowModelOverride'] == null ? null : map['allowModelOverride'] as bool,
      configuration: map['configuration'] == null ? null : map['configuration'] as String,
      configurationUrl: map['configurationUrl'] == null ? null : map['configurationUrl'] as String,
      extensionProfile: map['extensionProfile'] == null ? null : CloudServiceExtensionProfileResponse.fromMap((map['extensionProfile'] as Map).cast<String, dynamic>()),
      networkProfile: map['networkProfile'] == null ? null : CloudServiceNetworkProfileResponse.fromMap((map['networkProfile'] as Map).cast<String, dynamic>()),
      osProfile: map['osProfile'] == null ? null : CloudServiceOsProfileResponse.fromMap((map['osProfile'] as Map).cast<String, dynamic>()),
      packageUrl: map['packageUrl'] == null ? null : map['packageUrl'] as String,
      provisioningState: map['provisioningState'] as String,
      roleProfile: map['roleProfile'] == null ? null : CloudServiceRoleProfileResponse.fromMap((map['roleProfile'] as Map).cast<String, dynamic>()),
      startCloudService: map['startCloudService'] == null ? null : map['startCloudService'] as bool,
      uniqueId: map['uniqueId'] as String,
      upgradeMode: map['upgradeMode'] == null ? null : map['upgradeMode'] as String,
    );
  }
}

