// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_update_properties.dart';
import 'registration_info.dart';
import 'resource_model_with_allowed_property_set_identity.dart';
import 'resource_model_with_allowed_property_set_plan.dart';
import 'resource_model_with_allowed_property_set_sku.dart';

/// {@template pulumi_desktopvirtualization_host_pool_args_doc}
/// The set of arguments for HostPool.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_host_pool_args_doc}
class HostPoolArgs {
  /// The session host configuration for updating agent, monitoring agent, and stack component.
  final pulumi.Input<AgentUpdateProperties>? agentUpdate;
  /// Custom rdp property of HostPool.
  final pulumi.Input<String>? customRdpProperty;
  /// Description of HostPool.
  final pulumi.Input<String>? description;
  /// Friendly name of HostPool.
  final pulumi.Input<String>? friendlyName;
  /// The name of the host pool within the specified resource group
  final pulumi.Input<String>? hostPoolName;
  /// HostPool type for desktop.
  final pulumi.Input<String> hostPoolType;
  final pulumi.Input<ResourceModelWithAllowedPropertySetIdentity>? identity;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  final pulumi.Input<String>? kind;
  /// The type of the load balancer.
  final pulumi.Input<String> loadBalancerType;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  final pulumi.Input<String>? managedBy;
  /// The max session limit of HostPool.
  final pulumi.Input<int>? maxSessionLimit;
  /// PersonalDesktopAssignment type for HostPool.
  final pulumi.Input<String>? personalDesktopAssignmentType;
  final pulumi.Input<ResourceModelWithAllowedPropertySetPlan>? plan;
  /// The type of preferred application group type, default to Desktop Application Group
  final pulumi.Input<String> preferredAppGroupType;
  /// Enabled allows this resource to be accessed from both public and private networks, Disabled allows this resource to only be accessed via private endpoints
  final pulumi.Input<String>? publicNetworkAccess;
  /// The registration info of HostPool.
  final pulumi.Input<RegistrationInfo>? registrationInfo;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The ring number of HostPool.
  final pulumi.Input<int>? ring;
  final pulumi.Input<ResourceModelWithAllowedPropertySetSku>? sku;
  /// ClientId for the registered Relying Party used to issue WVD SSO certificates.
  final pulumi.Input<String>? ssoClientId;
  /// Path to Azure KeyVault storing the secret used for communication to ADFS.
  final pulumi.Input<String>? ssoClientSecretKeyVaultPath;
  /// The type of single sign on Secret Type.
  final pulumi.Input<String>? ssoSecretType;
  /// URL to customer ADFS server for signing WVD SSO certificates.
  final pulumi.Input<String>? ssoadfsAuthority;
  /// The flag to turn on/off StartVMOnConnect feature.
  final pulumi.Input<bool>? startVMOnConnect;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Is validation environment.
  final pulumi.Input<bool>? validationEnvironment;
  /// VM template for sessionhosts configuration within hostpool.
  final pulumi.Input<String>? vmTemplate;

  /// Creates a new [HostPoolArgs].
  /// [agentUpdate] The session host configuration for updating agent, monitoring agent, and stack component.
  /// [customRdpProperty] Custom rdp property of HostPool.
  /// [description] Description of HostPool.
  /// [friendlyName] Friendly name of HostPool.
  /// [hostPoolName] The name of the host pool within the specified resource group
  /// [hostPoolType] HostPool type for desktop.
  /// [identity] Optional.
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [loadBalancerType] The type of the load balancer.
  /// [location] The geo-location where the resource lives
  /// [managedBy] The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  /// [maxSessionLimit] The max session limit of HostPool.
  /// [personalDesktopAssignmentType] PersonalDesktopAssignment type for HostPool.
  /// [plan] Optional.
  /// [preferredAppGroupType] The type of preferred application group type, default to Desktop Application Group
  /// [publicNetworkAccess] Enabled allows this resource to be accessed from both public and private networks, Disabled allows this resource to only be accessed via private endpoints
  /// [registrationInfo] The registration info of HostPool.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ring] The ring number of HostPool.
  /// [sku] Optional.
  /// [ssoClientId] ClientId for the registered Relying Party used to issue WVD SSO certificates.
  /// [ssoClientSecretKeyVaultPath] Path to Azure KeyVault storing the secret used for communication to ADFS.
  /// [ssoSecretType] The type of single sign on Secret Type.
  /// [ssoadfsAuthority] URL to customer ADFS server for signing WVD SSO certificates.
  /// [startVMOnConnect] The flag to turn on/off StartVMOnConnect feature.
  /// [tags] Resource tags.
  /// [validationEnvironment] Is validation environment.
  /// [vmTemplate] VM template for sessionhosts configuration within hostpool.
  const HostPoolArgs({
    this.agentUpdate,
    this.customRdpProperty,
    this.description,
    this.friendlyName,
    this.hostPoolName,
    required this.hostPoolType,
    this.identity,
    this.kind,
    required this.loadBalancerType,
    this.location,
    this.managedBy,
    this.maxSessionLimit,
    this.personalDesktopAssignmentType,
    this.plan,
    required this.preferredAppGroupType,
    this.publicNetworkAccess,
    this.registrationInfo,
    required this.resourceGroupName,
    this.ring,
    this.sku,
    this.ssoClientId,
    this.ssoClientSecretKeyVaultPath,
    this.ssoSecretType,
    this.ssoadfsAuthority,
    this.startVMOnConnect,
    this.tags,
    this.validationEnvironment,
    this.vmTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentUpdate': ?pulumi.Input.mapOptionalInputValue<AgentUpdateProperties, Map<String, dynamic>>(agentUpdate, (value) => value.toMap()),
      'customRdpProperty': ?customRdpProperty,
      'description': ?description,
      'friendlyName': ?friendlyName,
      'hostPoolName': ?hostPoolName,
      'hostPoolType': hostPoolType,
      'identity': ?pulumi.Input.mapOptionalInputValue<ResourceModelWithAllowedPropertySetIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'loadBalancerType': loadBalancerType,
      'location': ?location,
      'managedBy': ?managedBy,
      'maxSessionLimit': ?maxSessionLimit,
      'personalDesktopAssignmentType': ?personalDesktopAssignmentType,
      'plan': ?pulumi.Input.mapOptionalInputValue<ResourceModelWithAllowedPropertySetPlan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'preferredAppGroupType': preferredAppGroupType,
      'publicNetworkAccess': ?publicNetworkAccess,
      'registrationInfo': ?pulumi.Input.mapOptionalInputValue<RegistrationInfo, Map<String, dynamic>>(registrationInfo, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'ring': ?ring,
      'sku': ?pulumi.Input.mapOptionalInputValue<ResourceModelWithAllowedPropertySetSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'ssoClientId': ?ssoClientId,
      'ssoClientSecretKeyVaultPath': ?ssoClientSecretKeyVaultPath,
      'ssoSecretType': ?ssoSecretType,
      'ssoadfsAuthority': ?ssoadfsAuthority,
      'startVMOnConnect': ?startVMOnConnect,
      'tags': ?tags,
      'validationEnvironment': ?validationEnvironment,
      'vmTemplate': ?vmTemplate,
    };
  }

  factory HostPoolArgs.fromMap(Map<String, dynamic> map) {
    return HostPoolArgs(
      agentUpdate: (() { final guardedValue = map['agentUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentUpdateProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customRdpProperty: (() { final guardedValue = map['customRdpProperty']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostPoolName: (() { final guardedValue = map['hostPoolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostPoolType: pulumi.Input.fromValue(map['hostPoolType'] as String),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceModelWithAllowedPropertySetIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancerType: pulumi.Input.fromValue(map['loadBalancerType'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedBy: (() { final guardedValue = map['managedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxSessionLimit: (() { final guardedValue = map['maxSessionLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      personalDesktopAssignmentType: (() { final guardedValue = map['personalDesktopAssignmentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceModelWithAllowedPropertySetPlan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preferredAppGroupType: pulumi.Input.fromValue(map['preferredAppGroupType'] as String),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registrationInfo: (() { final guardedValue = map['registrationInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegistrationInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      ring: (() { final guardedValue = map['ring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceModelWithAllowedPropertySetSku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ssoClientId: (() { final guardedValue = map['ssoClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ssoClientSecretKeyVaultPath: (() { final guardedValue = map['ssoClientSecretKeyVaultPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ssoSecretType: (() { final guardedValue = map['ssoSecretType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ssoadfsAuthority: (() { final guardedValue = map['ssoadfsAuthority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startVMOnConnect: (() { final guardedValue = map['startVMOnConnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      validationEnvironment: (() { final guardedValue = map['validationEnvironment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vmTemplate: (() { final guardedValue = map['vmTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

