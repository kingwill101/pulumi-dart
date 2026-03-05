// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_service_extension_profile.dart';
import 'cloud_service_network_profile.dart';
import 'cloud_service_os_profile.dart';
import 'cloud_service_role_profile.dart';

/// Cloud service properties
class CloudServiceProperties {
  /// (Optional) Indicates whether the role sku properties (roleProfile.roles.sku) specified in the model/template should override the role instance count and vm size specified in the .cscfg and .csdef respectively.
  /// The default value is `false`.
  final pulumi.Input<bool>? allowModelOverride;
  /// Specifies the XML service configuration (.cscfg) for the cloud service.
  final pulumi.Input<String>? configuration;
  /// Specifies a URL that refers to the location of the service configuration in the Blob service. The service package URL  can be Shared Access Signature (SAS) URI from any storage account.
  /// This is a write-only property and is not returned in GET calls.
  final pulumi.Input<String>? configurationUrl;
  /// Describes a cloud service extension profile.
  final pulumi.Input<CloudServiceExtensionProfile>? extensionProfile;
  /// Network Profile for the cloud service.
  final pulumi.Input<CloudServiceNetworkProfile>? networkProfile;
  /// Describes the OS profile for the cloud service.
  final pulumi.Input<CloudServiceOsProfile>? osProfile;
  /// Specifies a URL that refers to the location of the service package in the Blob service. The service package URL can be Shared Access Signature (SAS) URI from any storage account.
  /// This is a write-only property and is not returned in GET calls.
  final pulumi.Input<String>? packageUrl;
  /// Describes the role profile for the cloud service.
  final pulumi.Input<CloudServiceRoleProfile>? roleProfile;
  /// (Optional) Indicates whether to start the cloud service immediately after it is created. The default value is `true`.
  /// If false, the service model is still deployed, but the code is not run immediately. Instead, the service is PoweredOff until you call Start, at which time the service will be started. A deployed service still incurs charges, even if it is poweredoff.
  final pulumi.Input<bool>? startCloudService;
  /// Update mode for the cloud service. Role instances are allocated to update domains when the service is deployed. Updates can be initiated manually in each update domain or initiated automatically in all update domains.
  /// Possible Values are &lt;br /&gt;&lt;br /&gt;**Auto**&lt;br /&gt;&lt;br /&gt;**Manual** &lt;br /&gt;&lt;br /&gt;**Simultaneous**&lt;br /&gt;&lt;br /&gt;
  /// If not specified, the default value is Auto. If set to Manual, PUT UpdateDomain must be called to apply the update. If set to Auto, the update is automatically applied to each update domain in sequence.
  final pulumi.Input<String>? upgradeMode;

  /// Creates a new [CloudServiceProperties].
  /// [allowModelOverride] (Optional) Indicates whether the role sku properties (roleProfile.roles.sku) specified in the model/template should override the role instance count and vm size specified in the .cscfg and .csdef respectively.
  /// [configuration] Specifies the XML service configuration (.cscfg) for the cloud service.
  /// [configurationUrl] Specifies a URL that refers to the location of the service configuration in the Blob service. The service package URL  can be Shared Access Signature (SAS) URI from any storage account.
  /// [extensionProfile] Describes a cloud service extension profile.
  /// [networkProfile] Network Profile for the cloud service.
  /// [osProfile] Describes the OS profile for the cloud service.
  /// [packageUrl] Specifies a URL that refers to the location of the service package in the Blob service. The service package URL can be Shared Access Signature (SAS) URI from any storage account.
  /// [roleProfile] Describes the role profile for the cloud service.
  /// [startCloudService] (Optional) Indicates whether to start the cloud service immediately after it is created. The default value is `true`.
  /// [upgradeMode] Update mode for the cloud service. Role instances are allocated to update domains when the service is deployed. Updates can be initiated manually in each update domain or initiated automatically in all update domains.
  CloudServiceProperties({
    this.allowModelOverride,
    this.configuration,
    this.configurationUrl,
    this.extensionProfile,
    this.networkProfile,
    this.osProfile,
    this.packageUrl,
    this.roleProfile,
    this.startCloudService,
    this.upgradeMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowModelOverride': ?allowModelOverride,
      'configuration': ?configuration,
      'configurationUrl': ?configurationUrl,
      'extensionProfile': ?pulumi.Input.mapOptionalInputValue<CloudServiceExtensionProfile, Map<String, dynamic>>(extensionProfile, (value) => value.toMap()),
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<CloudServiceNetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'osProfile': ?pulumi.Input.mapOptionalInputValue<CloudServiceOsProfile, Map<String, dynamic>>(osProfile, (value) => value.toMap()),
      'packageUrl': ?packageUrl,
      'roleProfile': ?pulumi.Input.mapOptionalInputValue<CloudServiceRoleProfile, Map<String, dynamic>>(roleProfile, (value) => value.toMap()),
      'startCloudService': ?startCloudService,
      'upgradeMode': ?upgradeMode,
    };
  }

  factory CloudServiceProperties.fromMap(Map<String, dynamic> map) {
    return CloudServiceProperties(
      allowModelOverride: (() { final guardedValue = map['allowModelOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configurationUrl: (() { final guardedValue = map['configurationUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extensionProfile: (() { final guardedValue = map['extensionProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudServiceExtensionProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudServiceNetworkProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      osProfile: (() { final guardedValue = map['osProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudServiceOsProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      packageUrl: (() { final guardedValue = map['packageUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleProfile: (() { final guardedValue = map['roleProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudServiceRoleProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startCloudService: (() { final guardedValue = map['startCloudService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      upgradeMode: (() { final guardedValue = map['upgradeMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

