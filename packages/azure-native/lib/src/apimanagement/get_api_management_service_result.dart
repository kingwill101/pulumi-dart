// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_location_response.dart';
import 'api_management_service_identity_response.dart';
import 'api_management_service_sku_properties_response.dart';
import 'api_version_constraint_response.dart';
import 'certificate_configuration_response.dart';
import 'hostname_configuration_response.dart';
import 'remote_private_endpoint_connection_wrapper_response.dart';
import 'system_data_response.dart';
import 'virtual_network_configuration_response.dart';

/// Result data returned by getApiManagementService.
class GetApiManagementServiceResult {
  /// Additional datacenter locations of the API Management service.
  final List<AdditionalLocationResponse>? additionalLocations;
  /// Control Plane Apis version constraint for the API Management service.
  final ApiVersionConstraintResponse? apiVersionConstraint;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// List of Certificates that need to be installed in the API Management service. Max supported certificates that can be installed is 10.
  final List<CertificateConfigurationResponse>? certificates;
  /// Creation UTC date of the API Management service.The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  final String createdAtUtc;
  /// Custom properties of the API Management service.</br>Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TripleDes168` will disable the cipher TLS_RSA_WITH_3DES_EDE_CBC_SHA for all TLS(1.0, 1.1 and 1.2).</br>Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Tls11` can be used to disable just TLS 1.1.</br>Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Tls10` can be used to disable TLS 1.0 on an API Management service.</br>Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Backend.Protocols.Tls11` can be used to disable just TLS 1.1 for communications with backends.</br>Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Backend.Protocols.Tls10` can be used to disable TLS 1.0 for communications with backends.</br>Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Protocols.Server.Http2` can be used to enable HTTP2 protocol on an API Management service.</br>Not specifying any of these properties on PATCH operation will reset omitted properties' values to their defaults. For all the settings except Http2 the default value is `True` if the service was created on or before April 1, 2018 and `False` otherwise. Http2 setting's default value is `False`.</br></br>You can disable any of the following ciphers by using settings `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.[cipher_name]`: TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA, TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA, TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA, TLS_RSA_WITH_AES_128_GCM_SHA256, TLS_RSA_WITH_AES_256_CBC_SHA256, TLS_RSA_WITH_AES_128_CBC_SHA256, TLS_RSA_WITH_AES_256_CBC_SHA, TLS_RSA_WITH_AES_128_CBC_SHA. For example, `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TLS_RSA_WITH_AES_128_CBC_SHA256`:`false`. The default value is `true` for them.</br> Note: The following ciphers can't be disabled since they are required by internal platform components: TLS_AES_256_GCM_SHA384,TLS_AES_128_GCM_SHA256,TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384,TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384,TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384,TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256,TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384,TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256
  final Map<String, String>? customProperties;
  /// DEveloper Portal endpoint URL of the API Management service.
  final String developerPortalUrl;
  /// Property only valid for an Api Management service deployed in multiple locations. This can be used to disable the gateway in master region.
  final bool? disableGateway;
  /// Property only meant to be used for Consumption SKU Service. This enforces a client certificate to be presented on each request to the gateway. This also enables the ability to authenticate the certificate in the policy on the gateway.
  final bool? enableClientCertificate;
  /// ETag of the resource.
  final String etag;
  /// Gateway URL of the API Management service in the Default Region.
  final String gatewayRegionalUrl;
  /// Gateway URL of the API Management service.
  final String gatewayUrl;
  /// Custom hostname configuration of the API Management service.
  final List<HostnameConfigurationResponse>? hostnameConfigurations;
  /// Resource ID.
  final String id;
  /// Managed service identity of the Api Management service.
  final ApiManagementServiceIdentityResponse? identity;
  /// Resource location.
  final String location;
  /// Management API endpoint URL of the API Management service.
  final String managementApiUrl;
  /// Resource name.
  final String name;
  /// Property can be used to enable NAT Gateway for this API Management service.
  final String? natGatewayState;
  /// Email address from which the notification will be sent.
  final String? notificationSenderEmail;
  /// Outbound public IPV4 address prefixes associated with NAT Gateway deployed service. Available only for Premium SKU on stv2 platform.
  final List<String> outboundPublicIPAddresses;
  /// Compute Platform Version running the service in this location.
  final String platformVersion;
  /// Publisher portal endpoint Url of the API Management service.
  final String portalUrl;
  /// List of Private Endpoint Connections of this service.
  final List<RemotePrivateEndpointConnectionWrapperResponse>? privateEndpointConnections;
  /// Private Static Load Balanced IP addresses of the API Management service in Primary region which is deployed in an Internal Virtual Network. Available only for Basic, Standard, Premium and Isolated SKU.
  final List<String> privateIPAddresses;
  /// The current provisioning state of the API Management service which can be one of the following: Created/Activating/Succeeded/Updating/Failed/Stopped/Terminating/TerminationFailed/Deleted.
  final String provisioningState;
  /// Public Static Load Balanced IP addresses of the API Management service in Primary region. Available only for Basic, Standard, Premium and Isolated SKU.
  final List<String> publicIPAddresses;
  /// Public Standard SKU IP V4 based IP address to be associated with Virtual Network deployed service in the region. Supported only for Developer and Premium SKU being deployed in Virtual Network.
  final String? publicIpAddressId;
  /// Whether or not public endpoint access is allowed for this API Management service.  Value is optional but if passed in, must be 'Enabled' or 'Disabled'. If 'Disabled', private endpoints are the exclusive access method. Default value is 'Enabled'
  final String? publicNetworkAccess;
  /// Publisher email.
  final String publisherEmail;
  /// Publisher name.
  final String publisherName;
  /// Undelete Api Management Service if it was previously soft-deleted. If this flag is specified and set to True all other properties will be ignored.
  final bool? restore;
  /// SCM endpoint URL of the API Management service.
  final String scmUrl;
  /// SKU properties of the API Management service.
  final ApiManagementServiceSkuPropertiesResponse sku;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The provisioning state of the API Management service, which is targeted by the long running operation started on the service.
  final String targetProvisioningState;
  /// Resource type for API Management resource is set to Microsoft.ApiManagement.
  final String type;
  /// Virtual network configuration of the API Management service.
  final VirtualNetworkConfigurationResponse? virtualNetworkConfiguration;
  /// The type of VPN in which API Management service needs to be configured in. None (Default Value) means the API Management service is not part of any Virtual Network, External means the API Management deployment is set up inside a Virtual Network having an Internet Facing Endpoint, and Internal means that API Management deployment is setup inside a Virtual Network having an Intranet Facing Endpoint only.
  final String? virtualNetworkType;
  /// A list of availability zones denoting where the resource needs to come from.
  final List<String>? zones;

  /// Creates a new [GetApiManagementServiceResult].
  /// [additionalLocations] Additional datacenter locations of the API Management service.
  /// [apiVersionConstraint] Control Plane Apis version constraint for the API Management service.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [certificates] List of Certificates that need to be installed in the API Management service. Max supported certificates that can be installed is 10.
  /// [createdAtUtc] Creation UTC date of the API Management service.The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  /// [customProperties] Custom properties of the API Management service.</br>Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TripleDes168` will disable the cipher TLS_RSA_WITH_3DES_EDE_CBC_SHA for all TLS(1.0, 1.1 and 1.2).</br>Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Tls11` can be used to disable just TLS 1.1.</br>Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Tls10` can be used to disable TLS 1.0 on an API Management service.</br>Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Backend.Protocols.Tls11` can be used to disable just TLS 1.1 for communications with backends.</br>Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Backend.Protocols.Tls10` can be used to disable TLS 1.0 for communications with backends.</br>Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Protocols.Server.Http2` can be used to enable HTTP2 protocol on an API Management service.</br>Not specifying any of these properties on PATCH operation will reset omitted properties' values to their defaults. For all the settings except Http2 the default value is `True` if the service was created on or before April 1, 2018 and `False` otherwise. Http2 setting's default value is `False`.</br></br>You can disable any of the following ciphers by using settings `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.[cipher_name]`: TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA, TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA, TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA, TLS_RSA_WITH_AES_128_GCM_SHA256, TLS_RSA_WITH_AES_256_CBC_SHA256, TLS_RSA_WITH_AES_128_CBC_SHA256, TLS_RSA_WITH_AES_256_CBC_SHA, TLS_RSA_WITH_AES_128_CBC_SHA. For example, `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TLS_RSA_WITH_AES_128_CBC_SHA256`:`false`. The default value is `true` for them.</br> Note: The following ciphers can't be disabled since they are required by internal platform components: TLS_AES_256_GCM_SHA384,TLS_AES_128_GCM_SHA256,TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384,TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384,TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384,TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256,TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384,TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256
  /// [developerPortalUrl] DEveloper Portal endpoint URL of the API Management service.
  /// [disableGateway] Property only valid for an Api Management service deployed in multiple locations. This can be used to disable the gateway in master region.
  /// [enableClientCertificate] Property only meant to be used for Consumption SKU Service. This enforces a client certificate to be presented on each request to the gateway. This also enables the ability to authenticate the certificate in the policy on the gateway.
  /// [etag] ETag of the resource.
  /// [gatewayRegionalUrl] Gateway URL of the API Management service in the Default Region.
  /// [gatewayUrl] Gateway URL of the API Management service.
  /// [hostnameConfigurations] Custom hostname configuration of the API Management service.
  /// [id] Resource ID.
  /// [identity] Managed service identity of the Api Management service.
  /// [location] Resource location.
  /// [managementApiUrl] Management API endpoint URL of the API Management service.
  /// [name] Resource name.
  /// [natGatewayState] Property can be used to enable NAT Gateway for this API Management service.
  /// [notificationSenderEmail] Email address from which the notification will be sent.
  /// [outboundPublicIPAddresses] Outbound public IPV4 address prefixes associated with NAT Gateway deployed service. Available only for Premium SKU on stv2 platform.
  /// [platformVersion] Compute Platform Version running the service in this location.
  /// [portalUrl] Publisher portal endpoint Url of the API Management service.
  /// [privateEndpointConnections] List of Private Endpoint Connections of this service.
  /// [privateIPAddresses] Private Static Load Balanced IP addresses of the API Management service in Primary region which is deployed in an Internal Virtual Network. Available only for Basic, Standard, Premium and Isolated SKU.
  /// [provisioningState] The current provisioning state of the API Management service which can be one of the following: Created/Activating/Succeeded/Updating/Failed/Stopped/Terminating/TerminationFailed/Deleted.
  /// [publicIPAddresses] Public Static Load Balanced IP addresses of the API Management service in Primary region. Available only for Basic, Standard, Premium and Isolated SKU.
  /// [publicIpAddressId] Public Standard SKU IP V4 based IP address to be associated with Virtual Network deployed service in the region. Supported only for Developer and Premium SKU being deployed in Virtual Network.
  /// [publicNetworkAccess] Whether or not public endpoint access is allowed for this API Management service.  Value is optional but if passed in, must be 'Enabled' or 'Disabled'. If 'Disabled', private endpoints are the exclusive access method. Default value is 'Enabled'
  /// [publisherEmail] Publisher email.
  /// [publisherName] Publisher name.
  /// [restore] Undelete Api Management Service if it was previously soft-deleted. If this flag is specified and set to True all other properties will be ignored.
  /// [scmUrl] SCM endpoint URL of the API Management service.
  /// [sku] SKU properties of the API Management service.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Resource tags.
  /// [targetProvisioningState] The provisioning state of the API Management service, which is targeted by the long running operation started on the service.
  /// [type] Resource type for API Management resource is set to Microsoft.ApiManagement.
  /// [virtualNetworkConfiguration] Virtual network configuration of the API Management service.
  /// [virtualNetworkType] The type of VPN in which API Management service needs to be configured in. None (Default Value) means the API Management service is not part of any Virtual Network, External means the API Management deployment is set up inside a Virtual Network having an Internet Facing Endpoint, and Internal means that API Management deployment is setup inside a Virtual Network having an Intranet Facing Endpoint only.
  /// [zones] A list of availability zones denoting where the resource needs to come from.
  GetApiManagementServiceResult({
    this.additionalLocations,
    this.apiVersionConstraint,
    required this.azureApiVersion,
    this.certificates,
    required this.createdAtUtc,
    this.customProperties,
    required this.developerPortalUrl,
    this.disableGateway,
    this.enableClientCertificate,
    required this.etag,
    required this.gatewayRegionalUrl,
    required this.gatewayUrl,
    this.hostnameConfigurations,
    required this.id,
    this.identity,
    required this.location,
    required this.managementApiUrl,
    required this.name,
    this.natGatewayState,
    this.notificationSenderEmail,
    required this.outboundPublicIPAddresses,
    required this.platformVersion,
    required this.portalUrl,
    this.privateEndpointConnections,
    required this.privateIPAddresses,
    required this.provisioningState,
    required this.publicIPAddresses,
    this.publicIpAddressId,
    this.publicNetworkAccess,
    required this.publisherEmail,
    required this.publisherName,
    this.restore,
    required this.scmUrl,
    required this.sku,
    required this.systemData,
    this.tags,
    required this.targetProvisioningState,
    required this.type,
    this.virtualNetworkConfiguration,
    this.virtualNetworkType,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalLocations': ?additionalLocations == null ? null : pulumi.Input.encodeList<AdditionalLocationResponse, Map<String, dynamic>>(additionalLocations!, (value) => value.toMap()),
      'apiVersionConstraint': ?apiVersionConstraint == null ? null : apiVersionConstraint!.toMap(),
      'azureApiVersion': azureApiVersion,
      'certificates': ?certificates == null ? null : pulumi.Input.encodeList<CertificateConfigurationResponse, Map<String, dynamic>>(certificates!, (value) => value.toMap()),
      'createdAtUtc': createdAtUtc,
      'customProperties': ?customProperties,
      'developerPortalUrl': developerPortalUrl,
      'disableGateway': ?disableGateway,
      'enableClientCertificate': ?enableClientCertificate,
      'etag': etag,
      'gatewayRegionalUrl': gatewayRegionalUrl,
      'gatewayUrl': gatewayUrl,
      'hostnameConfigurations': ?hostnameConfigurations == null ? null : pulumi.Input.encodeList<HostnameConfigurationResponse, Map<String, dynamic>>(hostnameConfigurations!, (value) => value.toMap()),
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': location,
      'managementApiUrl': managementApiUrl,
      'name': name,
      'natGatewayState': ?natGatewayState,
      'notificationSenderEmail': ?notificationSenderEmail,
      'outboundPublicIPAddresses': outboundPublicIPAddresses,
      'platformVersion': platformVersion,
      'portalUrl': portalUrl,
      'privateEndpointConnections': ?privateEndpointConnections == null ? null : pulumi.Input.encodeList<RemotePrivateEndpointConnectionWrapperResponse, Map<String, dynamic>>(privateEndpointConnections!, (value) => value.toMap()),
      'privateIPAddresses': privateIPAddresses,
      'provisioningState': provisioningState,
      'publicIPAddresses': publicIPAddresses,
      'publicIpAddressId': ?publicIpAddressId,
      'publicNetworkAccess': ?publicNetworkAccess,
      'publisherEmail': publisherEmail,
      'publisherName': publisherName,
      'restore': ?restore,
      'scmUrl': scmUrl,
      'sku': sku.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'targetProvisioningState': targetProvisioningState,
      'type': type,
      'virtualNetworkConfiguration': ?virtualNetworkConfiguration == null ? null : virtualNetworkConfiguration!.toMap(),
      'virtualNetworkType': ?virtualNetworkType,
      'zones': ?zones,
    };
  }

  factory GetApiManagementServiceResult.fromMap(Map<String, dynamic> map) {
    return GetApiManagementServiceResult(
      additionalLocations: map['additionalLocations'] == null ? null : pulumi.Input.decodeList<AdditionalLocationResponse>(map['additionalLocations'], (value) => AdditionalLocationResponse.fromMap((value as Map).cast<String, dynamic>())),
      apiVersionConstraint: map['apiVersionConstraint'] == null ? null : ApiVersionConstraintResponse.fromMap((map['apiVersionConstraint'] as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      certificates: map['certificates'] == null ? null : pulumi.Input.decodeList<CertificateConfigurationResponse>(map['certificates'], (value) => CertificateConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      createdAtUtc: map['createdAtUtc'] as String,
      customProperties: map['customProperties'] == null ? null : (map['customProperties'] as Map).cast<String, String>(),
      developerPortalUrl: map['developerPortalUrl'] as String,
      disableGateway: map['disableGateway'] == null ? null : map['disableGateway'] as bool,
      enableClientCertificate: map['enableClientCertificate'] == null ? null : map['enableClientCertificate'] as bool,
      etag: map['etag'] as String,
      gatewayRegionalUrl: map['gatewayRegionalUrl'] as String,
      gatewayUrl: map['gatewayUrl'] as String,
      hostnameConfigurations: map['hostnameConfigurations'] == null ? null : pulumi.Input.decodeList<HostnameConfigurationResponse>(map['hostnameConfigurations'], (value) => HostnameConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ApiManagementServiceIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      managementApiUrl: map['managementApiUrl'] as String,
      name: map['name'] as String,
      natGatewayState: map['natGatewayState'] == null ? null : map['natGatewayState'] as String,
      notificationSenderEmail: map['notificationSenderEmail'] == null ? null : map['notificationSenderEmail'] as String,
      outboundPublicIPAddresses: (map['outboundPublicIPAddresses'] as List).cast<String>(),
      platformVersion: map['platformVersion'] as String,
      portalUrl: map['portalUrl'] as String,
      privateEndpointConnections: map['privateEndpointConnections'] == null ? null : pulumi.Input.decodeList<RemotePrivateEndpointConnectionWrapperResponse>(map['privateEndpointConnections'], (value) => RemotePrivateEndpointConnectionWrapperResponse.fromMap((value as Map).cast<String, dynamic>())),
      privateIPAddresses: (map['privateIPAddresses'] as List).cast<String>(),
      provisioningState: map['provisioningState'] as String,
      publicIPAddresses: (map['publicIPAddresses'] as List).cast<String>(),
      publicIpAddressId: map['publicIpAddressId'] == null ? null : map['publicIpAddressId'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      publisherEmail: map['publisherEmail'] as String,
      publisherName: map['publisherName'] as String,
      restore: map['restore'] == null ? null : map['restore'] as bool,
      scmUrl: map['scmUrl'] as String,
      sku: ApiManagementServiceSkuPropertiesResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      targetProvisioningState: map['targetProvisioningState'] as String,
      type: map['type'] as String,
      virtualNetworkConfiguration: map['virtualNetworkConfiguration'] == null ? null : VirtualNetworkConfigurationResponse.fromMap((map['virtualNetworkConfiguration'] as Map).cast<String, dynamic>()),
      virtualNetworkType: map['virtualNetworkType'] == null ? null : map['virtualNetworkType'] as String,
      zones: map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}

