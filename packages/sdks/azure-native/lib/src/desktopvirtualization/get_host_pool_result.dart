// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_update_properties_response.dart';
import 'private_endpoint_connection_response.dart';
import 'registration_info_response.dart';
import 'resource_model_with_allowed_property_set_response_identity.dart';
import 'resource_model_with_allowed_property_set_response_plan.dart';
import 'resource_model_with_allowed_property_set_response_sku.dart';
import 'system_data_response.dart';

/// Result data returned by getHostPool.
class GetHostPoolResult {
  /// The session host configuration for updating agent, monitoring agent, and stack component.
  final AgentUpdatePropertiesResponse? agentUpdate;
  /// List of App Attach Package links.
  final List<String> appAttachPackageReferences;
  /// List of applicationGroup links.
  final List<String> applicationGroupReferences;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Is cloud pc resource.
  final bool cloudPcResource;
  /// Custom rdp property of HostPool.
  final String? customRdpProperty;
  /// Description of HostPool.
  final String? description;
  /// The etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  final String etag;
  /// Friendly name of HostPool.
  final String? friendlyName;
  /// HostPool type for desktop.
  final String hostPoolType;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  final ResourceModelWithAllowedPropertySetResponseIdentity? identity;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  final String? kind;
  /// The type of the load balancer.
  final String loadBalancerType;
  /// The geo-location where the resource lives
  final String location;
  /// The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  final String? managedBy;
  /// The max session limit of HostPool.
  final int? maxSessionLimit;
  /// The name of the resource
  final String name;
  /// ObjectId of HostPool. (internal use)
  final String objectId;
  /// PersonalDesktopAssignment type for HostPool.
  final String? personalDesktopAssignmentType;
  final ResourceModelWithAllowedPropertySetResponsePlan? plan;
  /// The type of preferred application group type, default to Desktop Application Group
  final String preferredAppGroupType;
  /// List of private endpoint connection associated with the specified resource
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// Enabled allows this resource to be accessed from both public and private networks, Disabled allows this resource to only be accessed via private endpoints
  final String? publicNetworkAccess;
  /// The registration info of HostPool.
  final RegistrationInfoResponse? registrationInfo;
  /// The ring number of HostPool.
  final int? ring;
  final ResourceModelWithAllowedPropertySetResponseSku? sku;
  /// ClientId for the registered Relying Party used to issue WVD SSO certificates.
  final String? ssoClientId;
  /// Path to Azure KeyVault storing the secret used for communication to ADFS.
  final String? ssoClientSecretKeyVaultPath;
  /// The type of single sign on Secret Type.
  final String? ssoSecretType;
  /// URL to customer ADFS server for signing WVD SSO certificates.
  final String? ssoadfsAuthority;
  /// The flag to turn on/off StartVMOnConnect feature.
  final bool? startVMOnConnect;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Is validation environment.
  final bool? validationEnvironment;
  /// VM template for sessionhosts configuration within hostpool.
  final String? vmTemplate;

  /// Creates a new [GetHostPoolResult].
  /// [agentUpdate] The session host configuration for updating agent, monitoring agent, and stack component.
  /// [appAttachPackageReferences] List of App Attach Package links.
  /// [applicationGroupReferences] List of applicationGroup links.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [cloudPcResource] Is cloud pc resource.
  /// [customRdpProperty] Custom rdp property of HostPool.
  /// [description] Description of HostPool.
  /// [etag] The etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  /// [friendlyName] Friendly name of HostPool.
  /// [hostPoolType] HostPool type for desktop.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] Optional.
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [loadBalancerType] The type of the load balancer.
  /// [location] The geo-location where the resource lives
  /// [managedBy] The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  /// [maxSessionLimit] The max session limit of HostPool.
  /// [name] The name of the resource
  /// [objectId] ObjectId of HostPool. (internal use)
  /// [personalDesktopAssignmentType] PersonalDesktopAssignment type for HostPool.
  /// [plan] Optional.
  /// [preferredAppGroupType] The type of preferred application group type, default to Desktop Application Group
  /// [privateEndpointConnections] List of private endpoint connection associated with the specified resource
  /// [publicNetworkAccess] Enabled allows this resource to be accessed from both public and private networks, Disabled allows this resource to only be accessed via private endpoints
  /// [registrationInfo] The registration info of HostPool.
  /// [ring] The ring number of HostPool.
  /// [sku] Optional.
  /// [ssoClientId] ClientId for the registered Relying Party used to issue WVD SSO certificates.
  /// [ssoClientSecretKeyVaultPath] Path to Azure KeyVault storing the secret used for communication to ADFS.
  /// [ssoSecretType] The type of single sign on Secret Type.
  /// [ssoadfsAuthority] URL to customer ADFS server for signing WVD SSO certificates.
  /// [startVMOnConnect] The flag to turn on/off StartVMOnConnect feature.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [validationEnvironment] Is validation environment.
  /// [vmTemplate] VM template for sessionhosts configuration within hostpool.
  const GetHostPoolResult({
    this.agentUpdate,
    required this.appAttachPackageReferences,
    required this.applicationGroupReferences,
    required this.azureApiVersion,
    required this.cloudPcResource,
    this.customRdpProperty,
    this.description,
    required this.etag,
    this.friendlyName,
    required this.hostPoolType,
    required this.id,
    this.identity,
    this.kind,
    required this.loadBalancerType,
    required this.location,
    this.managedBy,
    this.maxSessionLimit,
    required this.name,
    required this.objectId,
    this.personalDesktopAssignmentType,
    this.plan,
    required this.preferredAppGroupType,
    required this.privateEndpointConnections,
    this.publicNetworkAccess,
    this.registrationInfo,
    this.ring,
    this.sku,
    this.ssoClientId,
    this.ssoClientSecretKeyVaultPath,
    this.ssoSecretType,
    this.ssoadfsAuthority,
    this.startVMOnConnect,
    required this.systemData,
    this.tags,
    required this.type,
    this.validationEnvironment,
    this.vmTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentUpdate': ?agentUpdate?.toMap(),
      'appAttachPackageReferences': appAttachPackageReferences,
      'applicationGroupReferences': applicationGroupReferences,
      'azureApiVersion': azureApiVersion,
      'cloudPcResource': cloudPcResource,
      'customRdpProperty': ?customRdpProperty,
      'description': ?description,
      'etag': etag,
      'friendlyName': ?friendlyName,
      'hostPoolType': hostPoolType,
      'id': id,
      'identity': ?identity?.toMap(),
      'kind': ?kind,
      'loadBalancerType': loadBalancerType,
      'location': location,
      'managedBy': ?managedBy,
      'maxSessionLimit': ?maxSessionLimit,
      'name': name,
      'objectId': objectId,
      'personalDesktopAssignmentType': ?personalDesktopAssignmentType,
      'plan': ?plan?.toMap(),
      'preferredAppGroupType': preferredAppGroupType,
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'publicNetworkAccess': ?publicNetworkAccess,
      'registrationInfo': ?registrationInfo?.toMap(),
      'ring': ?ring,
      'sku': ?sku?.toMap(),
      'ssoClientId': ?ssoClientId,
      'ssoClientSecretKeyVaultPath': ?ssoClientSecretKeyVaultPath,
      'ssoSecretType': ?ssoSecretType,
      'ssoadfsAuthority': ?ssoadfsAuthority,
      'startVMOnConnect': ?startVMOnConnect,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'validationEnvironment': ?validationEnvironment,
      'vmTemplate': ?vmTemplate,
    };
  }

  factory GetHostPoolResult.fromMap(Map<String, dynamic> map) {
    return GetHostPoolResult(
      agentUpdate: (() { final guardedValue = map['agentUpdate']; if (guardedValue == null) return null; return AgentUpdatePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      appAttachPackageReferences: (map['appAttachPackageReferences'] as List).cast<String>(),
      applicationGroupReferences: (map['applicationGroupReferences'] as List).cast<String>(),
      azureApiVersion: map['azureApiVersion'] as String,
      cloudPcResource: map['cloudPcResource'] as bool,
      customRdpProperty: (() { final guardedValue = map['customRdpProperty']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: map['etag'] as String,
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostPoolType: map['hostPoolType'] as String,
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ResourceModelWithAllowedPropertySetResponseIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loadBalancerType: map['loadBalancerType'] as String,
      location: map['location'] as String,
      managedBy: (() { final guardedValue = map['managedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxSessionLimit: (() { final guardedValue = map['maxSessionLimit']; if (guardedValue == null) return null; return guardedValue as int; })(),
      name: map['name'] as String,
      objectId: map['objectId'] as String,
      personalDesktopAssignmentType: (() { final guardedValue = map['personalDesktopAssignmentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return ResourceModelWithAllowedPropertySetResponsePlan.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      preferredAppGroupType: map['preferredAppGroupType'] as String,
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections']!, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      registrationInfo: (() { final guardedValue = map['registrationInfo']; if (guardedValue == null) return null; return RegistrationInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      ring: (() { final guardedValue = map['ring']; if (guardedValue == null) return null; return guardedValue as int; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return ResourceModelWithAllowedPropertySetResponseSku.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      ssoClientId: (() { final guardedValue = map['ssoClientId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ssoClientSecretKeyVaultPath: (() { final guardedValue = map['ssoClientSecretKeyVaultPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ssoSecretType: (() { final guardedValue = map['ssoSecretType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ssoadfsAuthority: (() { final guardedValue = map['ssoadfsAuthority']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startVMOnConnect: (() { final guardedValue = map['startVMOnConnect']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      validationEnvironment: (() { final guardedValue = map['validationEnvironment']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      vmTemplate: (() { final guardedValue = map['vmTemplate']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

