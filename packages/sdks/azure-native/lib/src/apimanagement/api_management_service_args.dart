// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_location.dart';
import 'api_management_service_identity.dart';
import 'api_management_service_sku_properties.dart';
import 'api_version_constraint.dart';
import 'certificate_configuration.dart';
import 'hostname_configuration.dart';
import 'remote_private_endpoint_connection_wrapper.dart';
import 'virtual_network_configuration.dart';

/// {@template pulumi_apimanagement_api_management_service_args_doc}
/// The set of arguments for ApiManagementService.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_api_management_service_args_doc}
class ApiManagementServiceArgs {
  /// Additional datacenter locations of the API Management service.
  final pulumi.Input<List<AdditionalLocation>>? additionalLocations;
  /// Control Plane Apis version constraint for the API Management service.
  final pulumi.Input<ApiVersionConstraint>? apiVersionConstraint;
  /// List of Certificates that need to be installed in the API Management service. Max supported certificates that can be installed is 10.
  final pulumi.Input<List<CertificateConfiguration>>? certificates;
  /// Custom properties of the API Management service.</br>Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TripleDes168` will disable the cipher TLS_RSA_WITH_3DES_EDE_CBC_SHA for all TLS(1.0, 1.1 and 1.2).</br>Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Tls11` can be used to disable just TLS 1.1.</br>Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Tls10` can be used to disable TLS 1.0 on an API Management service.</br>Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Backend.Protocols.Tls11` can be used to disable just TLS 1.1 for communications with backends.</br>Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Backend.Protocols.Tls10` can be used to disable TLS 1.0 for communications with backends.</br>Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Protocols.Server.Http2` can be used to enable HTTP2 protocol on an API Management service.</br>Not specifying any of these properties on PATCH operation will reset omitted properties' values to their defaults. For all the settings except Http2 the default value is `True` if the service was created on or before April 1, 2018 and `False` otherwise. Http2 setting's default value is `False`.</br></br>You can disable any of the following ciphers by using settings `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.[cipher_name]`: TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA, TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA, TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA, TLS_RSA_WITH_AES_128_GCM_SHA256, TLS_RSA_WITH_AES_256_CBC_SHA256, TLS_RSA_WITH_AES_128_CBC_SHA256, TLS_RSA_WITH_AES_256_CBC_SHA, TLS_RSA_WITH_AES_128_CBC_SHA. For example, `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TLS_RSA_WITH_AES_128_CBC_SHA256`:`false`. The default value is `true` for them.</br> Note: The following ciphers can't be disabled since they are required by internal platform components: TLS_AES_256_GCM_SHA384,TLS_AES_128_GCM_SHA256,TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384,TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384,TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384,TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256,TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384,TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256
  final pulumi.Input<Map<String, String>>? customProperties;
  /// Property only valid for an Api Management service deployed in multiple locations. This can be used to disable the gateway in master region.
  final pulumi.Input<bool>? disableGateway;
  /// Property only meant to be used for Consumption SKU Service. This enforces a client certificate to be presented on each request to the gateway. This also enables the ability to authenticate the certificate in the policy on the gateway.
  final pulumi.Input<bool>? enableClientCertificate;
  /// Custom hostname configuration of the API Management service.
  final pulumi.Input<List<HostnameConfiguration>>? hostnameConfigurations;
  /// Managed service identity of the Api Management service.
  final pulumi.Input<ApiManagementServiceIdentity>? identity;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Property can be used to enable NAT Gateway for this API Management service.
  final pulumi.Input<String>? natGatewayState;
  /// Email address from which the notification will be sent.
  final pulumi.Input<String>? notificationSenderEmail;
  /// List of Private Endpoint Connections of this service.
  final pulumi.Input<List<RemotePrivateEndpointConnectionWrapper>>? privateEndpointConnections;
  /// Public Standard SKU IP V4 based IP address to be associated with Virtual Network deployed service in the region. Supported only for Developer and Premium SKU being deployed in Virtual Network.
  final pulumi.Input<String>? publicIpAddressId;
  /// Whether or not public endpoint access is allowed for this API Management service.  Value is optional but if passed in, must be 'Enabled' or 'Disabled'. If 'Disabled', private endpoints are the exclusive access method. Default value is 'Enabled'
  final pulumi.Input<String>? publicNetworkAccess;
  /// Publisher email.
  final pulumi.Input<String> publisherEmail;
  /// Publisher name.
  final pulumi.Input<String> publisherName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Undelete Api Management Service if it was previously soft-deleted. If this flag is specified and set to True all other properties will be ignored.
  final pulumi.Input<bool>? restore;
  /// The name of the API Management service.
  final pulumi.Input<String>? serviceName;
  /// SKU properties of the API Management service.
  final pulumi.Input<ApiManagementServiceSkuProperties> sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Virtual network configuration of the API Management service.
  final pulumi.Input<VirtualNetworkConfiguration>? virtualNetworkConfiguration;
  /// The type of VPN in which API Management service needs to be configured in. None (Default Value) means the API Management service is not part of any Virtual Network, External means the API Management deployment is set up inside a Virtual Network having an Internet Facing Endpoint, and Internal means that API Management deployment is setup inside a Virtual Network having an Intranet Facing Endpoint only.
  final pulumi.Input<String>? virtualNetworkType;
  /// A list of availability zones denoting where the resource needs to come from.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [ApiManagementServiceArgs].
  /// [additionalLocations] Additional datacenter locations of the API Management service.
  /// [apiVersionConstraint] Control Plane Apis version constraint for the API Management service.
  /// [certificates] List of Certificates that need to be installed in the API Management service. Max supported certificates that can be installed is 10.
  /// [customProperties] Custom properties of the API Management service.</br>Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TripleDes168` will disable the cipher TLS_RSA_WITH_3DES_EDE_CBC_SHA for all TLS(1.0, 1.1 and 1.2).</br>Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Tls11` can be used to disable just TLS 1.1.</br>Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Tls10` can be used to disable TLS 1.0 on an API Management service.</br>Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Backend.Protocols.Tls11` can be used to disable just TLS 1.1 for communications with backends.</br>Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Backend.Protocols.Tls10` can be used to disable TLS 1.0 for communications with backends.</br>Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Protocols.Server.Http2` can be used to enable HTTP2 protocol on an API Management service.</br>Not specifying any of these properties on PATCH operation will reset omitted properties' values to their defaults. For all the settings except Http2 the default value is `True` if the service was created on or before April 1, 2018 and `False` otherwise. Http2 setting's default value is `False`.</br></br>You can disable any of the following ciphers by using settings `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.[cipher_name]`: TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA, TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA, TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA, TLS_RSA_WITH_AES_128_GCM_SHA256, TLS_RSA_WITH_AES_256_CBC_SHA256, TLS_RSA_WITH_AES_128_CBC_SHA256, TLS_RSA_WITH_AES_256_CBC_SHA, TLS_RSA_WITH_AES_128_CBC_SHA. For example, `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TLS_RSA_WITH_AES_128_CBC_SHA256`:`false`. The default value is `true` for them.</br> Note: The following ciphers can't be disabled since they are required by internal platform components: TLS_AES_256_GCM_SHA384,TLS_AES_128_GCM_SHA256,TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384,TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384,TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384,TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256,TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384,TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256
  /// [disableGateway] Property only valid for an Api Management service deployed in multiple locations. This can be used to disable the gateway in master region.
  /// [enableClientCertificate] Property only meant to be used for Consumption SKU Service. This enforces a client certificate to be presented on each request to the gateway. This also enables the ability to authenticate the certificate in the policy on the gateway.
  /// [hostnameConfigurations] Custom hostname configuration of the API Management service.
  /// [identity] Managed service identity of the Api Management service.
  /// [location] Resource location.
  /// [natGatewayState] Property can be used to enable NAT Gateway for this API Management service.
  /// [notificationSenderEmail] Email address from which the notification will be sent.
  /// [privateEndpointConnections] List of Private Endpoint Connections of this service.
  /// [publicIpAddressId] Public Standard SKU IP V4 based IP address to be associated with Virtual Network deployed service in the region. Supported only for Developer and Premium SKU being deployed in Virtual Network.
  /// [publicNetworkAccess] Whether or not public endpoint access is allowed for this API Management service.  Value is optional but if passed in, must be 'Enabled' or 'Disabled'. If 'Disabled', private endpoints are the exclusive access method. Default value is 'Enabled'
  /// [publisherEmail] Publisher email.
  /// [publisherName] Publisher name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [restore] Undelete Api Management Service if it was previously soft-deleted. If this flag is specified and set to True all other properties will be ignored.
  /// [serviceName] The name of the API Management service.
  /// [sku] SKU properties of the API Management service.
  /// [tags] Resource tags.
  /// [virtualNetworkConfiguration] Virtual network configuration of the API Management service.
  /// [virtualNetworkType] The type of VPN in which API Management service needs to be configured in. None (Default Value) means the API Management service is not part of any Virtual Network, External means the API Management deployment is set up inside a Virtual Network having an Internet Facing Endpoint, and Internal means that API Management deployment is setup inside a Virtual Network having an Intranet Facing Endpoint only.
  /// [zones] A list of availability zones denoting where the resource needs to come from.
  ApiManagementServiceArgs({
    this.additionalLocations,
    this.apiVersionConstraint,
    this.certificates,
    this.customProperties,
    this.disableGateway,
    this.enableClientCertificate,
    this.hostnameConfigurations,
    this.identity,
    this.location,
    this.natGatewayState,
    this.notificationSenderEmail,
    this.privateEndpointConnections,
    this.publicIpAddressId,
    this.publicNetworkAccess,
    required this.publisherEmail,
    required this.publisherName,
    required this.resourceGroupName,
    this.restore,
    this.serviceName,
    required this.sku,
    this.tags,
    this.virtualNetworkConfiguration,
    this.virtualNetworkType,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalLocations': ?pulumi.Input.mapOptionalInputValue<List<AdditionalLocation>, List<Map<String, dynamic>>>(additionalLocations, (value) => pulumi.Input.encodeList<AdditionalLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiVersionConstraint': ?pulumi.Input.mapOptionalInputValue<ApiVersionConstraint, Map<String, dynamic>>(apiVersionConstraint, (value) => value.toMap()),
      'certificates': ?pulumi.Input.mapOptionalInputValue<List<CertificateConfiguration>, List<Map<String, dynamic>>>(certificates, (value) => pulumi.Input.encodeList<CertificateConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customProperties': ?customProperties,
      'disableGateway': ?disableGateway,
      'enableClientCertificate': ?enableClientCertificate,
      'hostnameConfigurations': ?pulumi.Input.mapOptionalInputValue<List<HostnameConfiguration>, List<Map<String, dynamic>>>(hostnameConfigurations, (value) => pulumi.Input.encodeList<HostnameConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identity': ?pulumi.Input.mapOptionalInputValue<ApiManagementServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'natGatewayState': ?natGatewayState,
      'notificationSenderEmail': ?notificationSenderEmail,
      'privateEndpointConnections': ?pulumi.Input.mapOptionalInputValue<List<RemotePrivateEndpointConnectionWrapper>, List<Map<String, dynamic>>>(privateEndpointConnections, (value) => pulumi.Input.encodeList<RemotePrivateEndpointConnectionWrapper, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicIpAddressId': ?publicIpAddressId,
      'publicNetworkAccess': ?publicNetworkAccess,
      'publisherEmail': publisherEmail,
      'publisherName': publisherName,
      'resourceGroupName': resourceGroupName,
      'restore': ?restore,
      'serviceName': ?serviceName,
      'sku': pulumi.Input.mapInputValue<ApiManagementServiceSkuProperties, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'virtualNetworkConfiguration': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkConfiguration, Map<String, dynamic>>(virtualNetworkConfiguration, (value) => value.toMap()),
      'virtualNetworkType': ?virtualNetworkType,
      'zones': ?zones,
    };
  }

  factory ApiManagementServiceArgs.fromMap(Map<String, dynamic> map) {
    return ApiManagementServiceArgs(
      additionalLocations: map['additionalLocations'] == null ? null : (pulumi.Input.decodeList<AdditionalLocation>(map['additionalLocations'], (value) => AdditionalLocation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      apiVersionConstraint: map['apiVersionConstraint'] == null ? null : (ApiVersionConstraint.fromMap((map['apiVersionConstraint'] as Map).cast<String, dynamic>())).input(),
      certificates: map['certificates'] == null ? null : (pulumi.Input.decodeList<CertificateConfiguration>(map['certificates'], (value) => CertificateConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      customProperties: map['customProperties'] == null ? null : ((map['customProperties'] as Map).cast<String, String>()).input(),
      disableGateway: map['disableGateway'] == null ? null : (map['disableGateway'] as bool).input(),
      enableClientCertificate: map['enableClientCertificate'] == null ? null : (map['enableClientCertificate'] as bool).input(),
      hostnameConfigurations: map['hostnameConfigurations'] == null ? null : (pulumi.Input.decodeList<HostnameConfiguration>(map['hostnameConfigurations'], (value) => HostnameConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      identity: map['identity'] == null ? null : (ApiManagementServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      natGatewayState: map['natGatewayState'] == null ? null : (map['natGatewayState'] as String).input(),
      notificationSenderEmail: map['notificationSenderEmail'] == null ? null : (map['notificationSenderEmail'] as String).input(),
      privateEndpointConnections: map['privateEndpointConnections'] == null ? null : (pulumi.Input.decodeList<RemotePrivateEndpointConnectionWrapper>(map['privateEndpointConnections'], (value) => RemotePrivateEndpointConnectionWrapper.fromMap((value as Map).cast<String, dynamic>()))).input(),
      publicIpAddressId: map['publicIpAddressId'] == null ? null : (map['publicIpAddressId'] as String).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess'] as String).input(),
      publisherEmail: (map['publisherEmail'] as String).input(),
      publisherName: (map['publisherName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      restore: map['restore'] == null ? null : (map['restore'] as bool).input(),
      serviceName: map['serviceName'] == null ? null : (map['serviceName'] as String).input(),
      sku: (ApiManagementServiceSkuProperties.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      virtualNetworkConfiguration: map['virtualNetworkConfiguration'] == null ? null : (VirtualNetworkConfiguration.fromMap((map['virtualNetworkConfiguration'] as Map).cast<String, dynamic>())).input(),
      virtualNetworkType: map['virtualNetworkType'] == null ? null : (map['virtualNetworkType'] as String).input(),
      zones: map['zones'] == null ? null : ((map['zones'] as List).cast<String>()).input(),
    );
  }
}

