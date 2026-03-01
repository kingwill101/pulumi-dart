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
  HostPoolArgs({
    pulumi.Output<AgentUpdateProperties>? agentUpdate,
    pulumi.Output<String>? customRdpProperty,
    pulumi.Output<String>? description,
    pulumi.Output<String>? friendlyName,
    pulumi.Output<String>? hostPoolName,
    required pulumi.Output<String> hostPoolType,
    pulumi.Output<ResourceModelWithAllowedPropertySetIdentity>? identity,
    pulumi.Output<String>? kind,
    required pulumi.Output<String> loadBalancerType,
    pulumi.Output<String>? location,
    pulumi.Output<String>? managedBy,
    pulumi.Output<int>? maxSessionLimit,
    pulumi.Output<String>? personalDesktopAssignmentType,
    pulumi.Output<ResourceModelWithAllowedPropertySetPlan>? plan,
    required pulumi.Output<String> preferredAppGroupType,
    pulumi.Output<String>? publicNetworkAccess,
    pulumi.Output<RegistrationInfo>? registrationInfo,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<int>? ring,
    pulumi.Output<ResourceModelWithAllowedPropertySetSku>? sku,
    pulumi.Output<String>? ssoClientId,
    pulumi.Output<String>? ssoClientSecretKeyVaultPath,
    pulumi.Output<String>? ssoSecretType,
    pulumi.Output<String>? ssoadfsAuthority,
    pulumi.Output<bool>? startVMOnConnect,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? validationEnvironment,
    pulumi.Output<String>? vmTemplate,
  }) :
      agentUpdate = pulumi.Input.asOptionalInput<AgentUpdateProperties>(agentUpdate),
      customRdpProperty = pulumi.Input.asOptionalInput<String>(customRdpProperty),
      description = pulumi.Input.asOptionalInput<String>(description),
      friendlyName = pulumi.Input.asOptionalInput<String>(friendlyName),
      hostPoolName = pulumi.Input.asOptionalInput<String>(hostPoolName),
      hostPoolType = pulumi.Input.asInput<String>(hostPoolType),
      identity = pulumi.Input.asOptionalInput<ResourceModelWithAllowedPropertySetIdentity>(identity),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      loadBalancerType = pulumi.Input.asInput<String>(loadBalancerType),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedBy = pulumi.Input.asOptionalInput<String>(managedBy),
      maxSessionLimit = pulumi.Input.asOptionalInput<int>(maxSessionLimit),
      personalDesktopAssignmentType = pulumi.Input.asOptionalInput<String>(personalDesktopAssignmentType),
      plan = pulumi.Input.asOptionalInput<ResourceModelWithAllowedPropertySetPlan>(plan),
      preferredAppGroupType = pulumi.Input.asInput<String>(preferredAppGroupType),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      registrationInfo = pulumi.Input.asOptionalInput<RegistrationInfo>(registrationInfo),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ring = pulumi.Input.asOptionalInput<int>(ring),
      sku = pulumi.Input.asOptionalInput<ResourceModelWithAllowedPropertySetSku>(sku),
      ssoClientId = pulumi.Input.asOptionalInput<String>(ssoClientId),
      ssoClientSecretKeyVaultPath = pulumi.Input.asOptionalInput<String>(ssoClientSecretKeyVaultPath),
      ssoSecretType = pulumi.Input.asOptionalInput<String>(ssoSecretType),
      ssoadfsAuthority = pulumi.Input.asOptionalInput<String>(ssoadfsAuthority),
      startVMOnConnect = pulumi.Input.asOptionalInput<bool>(startVMOnConnect),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      validationEnvironment = pulumi.Input.asOptionalInput<bool>(validationEnvironment),
      vmTemplate = pulumi.Input.asOptionalInput<String>(vmTemplate);

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
      agentUpdate: map['agentUpdate'] == null ? null : pulumi.Output.create<AgentUpdateProperties>(AgentUpdateProperties.fromMap((map['agentUpdate'] as Map).cast<String, dynamic>())),
      customRdpProperty: map['customRdpProperty'] == null ? null : pulumi.Output.create<String>(map['customRdpProperty'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      friendlyName: map['friendlyName'] == null ? null : pulumi.Output.create<String>(map['friendlyName'] as String),
      hostPoolName: map['hostPoolName'] == null ? null : pulumi.Output.create<String>(map['hostPoolName'] as String),
      hostPoolType: pulumi.Output.create<String>(map['hostPoolType'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ResourceModelWithAllowedPropertySetIdentity>(ResourceModelWithAllowedPropertySetIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      loadBalancerType: pulumi.Output.create<String>(map['loadBalancerType'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedBy: map['managedBy'] == null ? null : pulumi.Output.create<String>(map['managedBy'] as String),
      maxSessionLimit: map['maxSessionLimit'] == null ? null : pulumi.Output.create<int>(map['maxSessionLimit'] as int),
      personalDesktopAssignmentType: map['personalDesktopAssignmentType'] == null ? null : pulumi.Output.create<String>(map['personalDesktopAssignmentType'] as String),
      plan: map['plan'] == null ? null : pulumi.Output.create<ResourceModelWithAllowedPropertySetPlan>(ResourceModelWithAllowedPropertySetPlan.fromMap((map['plan'] as Map).cast<String, dynamic>())),
      preferredAppGroupType: pulumi.Output.create<String>(map['preferredAppGroupType'] as String),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccess'] as String),
      registrationInfo: map['registrationInfo'] == null ? null : pulumi.Output.create<RegistrationInfo>(RegistrationInfo.fromMap((map['registrationInfo'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      ring: map['ring'] == null ? null : pulumi.Output.create<int>(map['ring'] as int),
      sku: map['sku'] == null ? null : pulumi.Output.create<ResourceModelWithAllowedPropertySetSku>(ResourceModelWithAllowedPropertySetSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      ssoClientId: map['ssoClientId'] == null ? null : pulumi.Output.create<String>(map['ssoClientId'] as String),
      ssoClientSecretKeyVaultPath: map['ssoClientSecretKeyVaultPath'] == null ? null : pulumi.Output.create<String>(map['ssoClientSecretKeyVaultPath'] as String),
      ssoSecretType: map['ssoSecretType'] == null ? null : pulumi.Output.create<String>(map['ssoSecretType'] as String),
      ssoadfsAuthority: map['ssoadfsAuthority'] == null ? null : pulumi.Output.create<String>(map['ssoadfsAuthority'] as String),
      startVMOnConnect: map['startVMOnConnect'] == null ? null : pulumi.Output.create<bool>(map['startVMOnConnect'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      validationEnvironment: map['validationEnvironment'] == null ? null : pulumi.Output.create<bool>(map['validationEnvironment'] as bool),
      vmTemplate: map['vmTemplate'] == null ? null : pulumi.Output.create<String>(map['vmTemplate'] as String),
    );
  }
}

