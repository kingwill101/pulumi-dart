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
  /// Custom properties of the API Management service.&lt;/br&gt;Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TripleDes168` will disable the cipher TLS_RSA_WITH_3DES_EDE_CBC_SHA for all TLS(1.0, 1.1 and 1.2).&lt;/br&gt;Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Tls11` can be used to disable just TLS 1.1.&lt;/br&gt;Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Tls10` can be used to disable TLS 1.0 on an API Management service.&lt;/br&gt;Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Backend.Protocols.Tls11` can be used to disable just TLS 1.1 for communications with backends.&lt;/br&gt;Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Backend.Protocols.Tls10` can be used to disable TLS 1.0 for communications with backends.&lt;/br&gt;Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Protocols.Server.Http2` can be used to enable HTTP2 protocol on an API Management service.&lt;/br&gt;Not specifying any of these properties on PATCH operation will reset omitted properties' values to their defaults. For all the settings except Http2 the default value is `True` if the service was created on or before April 1, 2018 and `False` otherwise. Http2 setting's default value is `False`.&lt;/br&gt;&lt;/br&gt;You can disable any of the following ciphers by using settings `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.[cipher_name]`: TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA, TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA, TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA, TLS_RSA_WITH_AES_128_GCM_SHA256, TLS_RSA_WITH_AES_256_CBC_SHA256, TLS_RSA_WITH_AES_128_CBC_SHA256, TLS_RSA_WITH_AES_256_CBC_SHA, TLS_RSA_WITH_AES_128_CBC_SHA. For example, `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TLS_RSA_WITH_AES_128_CBC_SHA256`:`false`. The default value is `true` for them.&lt;/br&gt; Note: The following ciphers can't be disabled since they are required by internal platform components: TLS_AES_256_GCM_SHA384,TLS_AES_128_GCM_SHA256,TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384,TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384,TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384,TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256,TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384,TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256
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
  /// [customProperties] Custom properties of the API Management service.&lt;/br&gt;Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TripleDes168` will disable the cipher TLS_RSA_WITH_3DES_EDE_CBC_SHA for all TLS(1.0, 1.1 and 1.2).&lt;/br&gt;Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Tls11` can be used to disable just TLS 1.1.&lt;/br&gt;Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Tls10` can be used to disable TLS 1.0 on an API Management service.&lt;/br&gt;Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Backend.Protocols.Tls11` can be used to disable just TLS 1.1 for communications with backends.&lt;/br&gt;Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Backend.Protocols.Tls10` can be used to disable TLS 1.0 for communications with backends.&lt;/br&gt;Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Protocols.Server.Http2` can be used to enable HTTP2 protocol on an API Management service.&lt;/br&gt;Not specifying any of these properties on PATCH operation will reset omitted properties' values to their defaults. For all the settings except Http2 the default value is `True` if the service was created on or before April 1, 2018 and `False` otherwise. Http2 setting's default value is `False`.&lt;/br&gt;&lt;/br&gt;You can disable any of the following ciphers by using settings `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.[cipher_name]`: TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA, TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA, TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA, TLS_RSA_WITH_AES_128_GCM_SHA256, TLS_RSA_WITH_AES_256_CBC_SHA256, TLS_RSA_WITH_AES_128_CBC_SHA256, TLS_RSA_WITH_AES_256_CBC_SHA, TLS_RSA_WITH_AES_128_CBC_SHA. For example, `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TLS_RSA_WITH_AES_128_CBC_SHA256`:`false`. The default value is `true` for them.&lt;/br&gt; Note: The following ciphers can't be disabled since they are required by internal platform components: TLS_AES_256_GCM_SHA384,TLS_AES_128_GCM_SHA256,TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384,TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384,TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384,TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256,TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384,TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256
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
      additionalLocations: (() { final guardedValue = map['additionalLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AdditionalLocation>(guardedValue, (value) => AdditionalLocation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      apiVersionConstraint: (() { final guardedValue = map['apiVersionConstraint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiVersionConstraint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      certificates: (() { final guardedValue = map['certificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertificateConfiguration>(guardedValue, (value) => CertificateConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      customProperties: (() { final guardedValue = map['customProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      disableGateway: (() { final guardedValue = map['disableGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableClientCertificate: (() { final guardedValue = map['enableClientCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hostnameConfigurations: (() { final guardedValue = map['hostnameConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HostnameConfiguration>(guardedValue, (value) => HostnameConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiManagementServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natGatewayState: (() { final guardedValue = map['natGatewayState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationSenderEmail: (() { final guardedValue = map['notificationSenderEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RemotePrivateEndpointConnectionWrapper>(guardedValue, (value) => RemotePrivateEndpointConnectionWrapper.fromMap((value as Map).cast<String, dynamic>()))); })(),
      publicIpAddressId: (() { final guardedValue = map['publicIpAddressId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisherEmail: pulumi.Input.fromValue(map['publisherEmail'] as String),
      publisherName: pulumi.Input.fromValue(map['publisherName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      restore: (() { final guardedValue = map['restore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: pulumi.Input.fromValue(ApiManagementServiceSkuProperties.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualNetworkConfiguration: (() { final guardedValue = map['virtualNetworkConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualNetworkType: (() { final guardedValue = map['virtualNetworkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

