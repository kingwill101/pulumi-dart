// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_mesh_mesh_config_kiali_open_id_config.dart';
import 'service_mesh_mesh_config_kiali_ram_oauth_config.dart';
import 'service_mesh_mesh_config_kiali_server_config.dart';

class ServiceMeshMeshConfigKiali {
  /// When the mesh topology is deployed in managed mode and integrated with CLB to provide external access, the external access address is automatically generated.
  final pulumi.Input<String>? aggregatedKialiAddress;
  /// The authentication strategy used when logging into the mesh topology. In data plane deployment mode, the mesh topology can use token, openid, or ramoauth authentication strategies; in managed mode, the mesh topology can use openid or ramoauth authentication strategies.
  final pulumi.Input<String>? authStrategy;
  /// When the mesh topology cannot automatically use the integrated ARMS Prometheus, you need to use this property to specify a custom Prometheus HTTP API Url. The corresponding Prometheus instance needs to have been configured to collect Istio metrics in the cluster within the service mesh.
  final pulumi.Input<String>? customPrometheusUrl;
  /// The login token provided when the mesh topology is deployed in data plane deployment mode. When the mesh topology authentication strategy is token, this token can be used to log in to the mesh topology service. The key of the property is the Kubernetes cluster id, and the value of the property is the login token of the mesh topology service in the cluster.
  final pulumi.Input<String>? distributedKialiAccessTokens;
  /// When the mesh topology is deployed in data plane deployment mode and integrated with CLB to provide external access, the external access address is automatically generated. The key of the attribute is the Kubernetes cluster id, and the value is the external access address of the mesh topology service in the cluster.
  final pulumi.Input<String>? distributedKialiAddresses;
  /// Enable CNI
  final pulumi.Input<bool>? enabled;
  /// Whether to integrate CLB for mesh topology services to provide external access.
  final pulumi.Input<bool>? integrateClb;
  /// When the mesh topology automatically uses the integrated ARMS Prometheus, if the ARMS Prometheus instance in the cluster has token authentication enabled, you need to use this property to provide the corresponding authentication token for the mesh topology. The key of the property is the Kubernetes cluster id, and the value is the authentication token of the ARMS Prometheus instance corresponding to the cluster. (Service mesh instance version 1.15.3.113 or above is required)
  final pulumi.Input<String>? kialiArmsAuthTokens;
  /// Annotations for the Service corresponding to the mesh topology service. When the mesh topology service integrates CLB, annotations can be used to control the CLB specifications. The attribute type is map, the key is the Kubernetes cluster id, and the value is the mesh topology service annotation map under the corresponding Kubernetes cluster. When using the managed mode mesh topology, the key is the service mesh instance id. For annotation content, refer to [Configuring traditional load balancing CLB through Annotation](https://www.alibabacloud.com/help/en/ack/serverless-kubernetes/user-guide/use-annotations-to-configure-load-balancing).(Service mesh instance version 1.17.2.19 or above is required)
  final pulumi.Input<String>? kialiServiceAnnotations;
  /// When the mesh topology's authentication policy is openid, the configuration used when the mesh topology and OIDC application are connected. If the authentication policy is openid, this configuration must be provided. See `open_id_config` below.
  final pulumi.Input<ServiceMeshMeshConfigKialiOpenIdConfig>? openIdConfig;
  /// When the authentication strategy of the mesh topology is ramoauth, the mesh topology will be connected to the RAM OAuth application to log in with the Alibaba Cloud account. In this case, this attribute must be provided to configure the connection with the RAM OAuth application. See `ram_oauth_config` below.
  final pulumi.Input<ServiceMeshMeshConfigKialiRamOauthConfig>? ramOauthConfig;
  /// When you need to configure external access to the mesh topology through ASM gateway or other means, and access the mesh topology through a custom domain name or address, you need to specify this property. (The service mesh instance version must be 1.16.4.5 or above) See `server_config` below.
  final pulumi.Input<ServiceMeshMeshConfigKialiServerConfig>? serverConfig;
  /// Kiali service address
  final pulumi.Input<String>? url;
  /// Whether the mesh topology automatically uses the integrated ARMS Prometheus. When the integrated ARMS Prometheus is automatically used, there is no need to specify the dependent Prometheus HTTP API Url.
  final pulumi.Input<bool>? usePopulatedArmsPrometheus;

  /// Creates a new [ServiceMeshMeshConfigKiali].
  /// [aggregatedKialiAddress] When the mesh topology is deployed in managed mode and integrated with CLB to provide external access, the external access address is automatically generated.
  /// [authStrategy] The authentication strategy used when logging into the mesh topology. In data plane deployment mode, the mesh topology can use token, openid, or ramoauth authentication strategies; in managed mode, the mesh topology can use openid or ramoauth authentication strategies.
  /// [customPrometheusUrl] When the mesh topology cannot automatically use the integrated ARMS Prometheus, you need to use this property to specify a custom Prometheus HTTP API Url. The corresponding Prometheus instance needs to have been configured to collect Istio metrics in the cluster within the service mesh.
  /// [distributedKialiAccessTokens] The login token provided when the mesh topology is deployed in data plane deployment mode. When the mesh topology authentication strategy is token, this token can be used to log in to the mesh topology service. The key of the property is the Kubernetes cluster id, and the value of the property is the login token of the mesh topology service in the cluster.
  /// [distributedKialiAddresses] When the mesh topology is deployed in data plane deployment mode and integrated with CLB to provide external access, the external access address is automatically generated. The key of the attribute is the Kubernetes cluster id, and the value is the external access address of the mesh topology service in the cluster.
  /// [enabled] Enable CNI
  /// [integrateClb] Whether to integrate CLB for mesh topology services to provide external access.
  /// [kialiArmsAuthTokens] When the mesh topology automatically uses the integrated ARMS Prometheus, if the ARMS Prometheus instance in the cluster has token authentication enabled, you need to use this property to provide the corresponding authentication token for the mesh topology. The key of the property is the Kubernetes cluster id, and the value is the authentication token of the ARMS Prometheus instance corresponding to the cluster. (Service mesh instance version 1.15.3.113 or above is required)
  /// [kialiServiceAnnotations] Annotations for the Service corresponding to the mesh topology service. When the mesh topology service integrates CLB, annotations can be used to control the CLB specifications. The attribute type is map, the key is the Kubernetes cluster id, and the value is the mesh topology service annotation map under the corresponding Kubernetes cluster. When using the managed mode mesh topology, the key is the service mesh instance id. For annotation content, refer to [Configuring traditional load balancing CLB through Annotation](https://www.alibabacloud.com/help/en/ack/serverless-kubernetes/user-guide/use-annotations-to-configure-load-balancing).(Service mesh instance version 1.17.2.19 or above is required)
  /// [openIdConfig] When the mesh topology's authentication policy is openid, the configuration used when the mesh topology and OIDC application are connected. If the authentication policy is openid, this configuration must be provided. See `open_id_config` below.
  /// [ramOauthConfig] When the authentication strategy of the mesh topology is ramoauth, the mesh topology will be connected to the RAM OAuth application to log in with the Alibaba Cloud account. In this case, this attribute must be provided to configure the connection with the RAM OAuth application. See `ram_oauth_config` below.
  /// [serverConfig] When you need to configure external access to the mesh topology through ASM gateway or other means, and access the mesh topology through a custom domain name or address, you need to specify this property. (The service mesh instance version must be 1.16.4.5 or above) See `server_config` below.
  /// [url] Kiali service address
  /// [usePopulatedArmsPrometheus] Whether the mesh topology automatically uses the integrated ARMS Prometheus. When the integrated ARMS Prometheus is automatically used, there is no need to specify the dependent Prometheus HTTP API Url.
  ServiceMeshMeshConfigKiali({
    this.aggregatedKialiAddress,
    this.authStrategy,
    this.customPrometheusUrl,
    this.distributedKialiAccessTokens,
    this.distributedKialiAddresses,
    this.enabled,
    this.integrateClb,
    this.kialiArmsAuthTokens,
    this.kialiServiceAnnotations,
    this.openIdConfig,
    this.ramOauthConfig,
    this.serverConfig,
    this.url,
    this.usePopulatedArmsPrometheus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregatedKialiAddress': ?aggregatedKialiAddress,
      'authStrategy': ?authStrategy,
      'customPrometheusUrl': ?customPrometheusUrl,
      'distributedKialiAccessTokens': ?distributedKialiAccessTokens,
      'distributedKialiAddresses': ?distributedKialiAddresses,
      'enabled': ?enabled,
      'integrateClb': ?integrateClb,
      'kialiArmsAuthTokens': ?kialiArmsAuthTokens,
      'kialiServiceAnnotations': ?kialiServiceAnnotations,
      'openIdConfig': ?pulumi.Input.mapOptionalInputValue<ServiceMeshMeshConfigKialiOpenIdConfig, Map<String, dynamic>>(openIdConfig, (value) => value.toMap()),
      'ramOauthConfig': ?pulumi.Input.mapOptionalInputValue<ServiceMeshMeshConfigKialiRamOauthConfig, Map<String, dynamic>>(ramOauthConfig, (value) => value.toMap()),
      'serverConfig': ?pulumi.Input.mapOptionalInputValue<ServiceMeshMeshConfigKialiServerConfig, Map<String, dynamic>>(serverConfig, (value) => value.toMap()),
      'url': ?url,
      'usePopulatedArmsPrometheus': ?usePopulatedArmsPrometheus,
    };
  }

  factory ServiceMeshMeshConfigKiali.fromMap(Map<String, dynamic> map) {
    return ServiceMeshMeshConfigKiali(
      aggregatedKialiAddress: (() { final guardedValue = map['aggregatedKialiAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authStrategy: (() { final guardedValue = map['authStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customPrometheusUrl: (() { final guardedValue = map['customPrometheusUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      distributedKialiAccessTokens: (() { final guardedValue = map['distributedKialiAccessTokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      distributedKialiAddresses: (() { final guardedValue = map['distributedKialiAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      integrateClb: (() { final guardedValue = map['integrateClb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kialiArmsAuthTokens: (() { final guardedValue = map['kialiArmsAuthTokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kialiServiceAnnotations: (() { final guardedValue = map['kialiServiceAnnotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      openIdConfig: (() { final guardedValue = map['openIdConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceMeshMeshConfigKialiOpenIdConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ramOauthConfig: (() { final guardedValue = map['ramOauthConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceMeshMeshConfigKialiRamOauthConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serverConfig: (() { final guardedValue = map['serverConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceMeshMeshConfigKialiServerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usePopulatedArmsPrometheus: (() { final guardedValue = map['usePopulatedArmsPrometheus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

