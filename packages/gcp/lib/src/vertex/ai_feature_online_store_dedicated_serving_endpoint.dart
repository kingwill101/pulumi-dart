// ignore_for_file: unused_element, unnecessary_cast

import 'ai_feature_online_store_dedicated_serving_endpoint_private_service_connect_config.dart';

class AiFeatureOnlineStoreDedicatedServingEndpoint {
  /// Private service connect config.
  /// Structure is documented below.
  final AiFeatureOnlineStoreDedicatedServingEndpointPrivateServiceConnectConfig?
      privateServiceConnectConfig;

  /// (Output)
  /// Domain name to use for this FeatureOnlineStore
  final String? publicEndpointDomainName;

  /// (Output)
  /// Name of the service attachment resource. Applicable only if private service connect is enabled and after FeatureViewSync is created.
  final String? serviceAttachment;

  /// Creates a new [AiFeatureOnlineStoreDedicatedServingEndpoint].
  /// [privateServiceConnectConfig] Private service connect config.
  /// [publicEndpointDomainName] (Output)
  /// [serviceAttachment] (Output)
  AiFeatureOnlineStoreDedicatedServingEndpoint({
    this.privateServiceConnectConfig,
    this.publicEndpointDomainName,
    this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final privateServiceConnectConfigValue = privateServiceConnectConfig;
    if (privateServiceConnectConfigValue != null) {
      map['privateServiceConnectConfig'] =
          privateServiceConnectConfigValue.toMap();
    }
    final publicEndpointDomainNameValue = publicEndpointDomainName;
    if (publicEndpointDomainNameValue != null) {
      map['publicEndpointDomainName'] = publicEndpointDomainNameValue;
    }
    final serviceAttachmentValue = serviceAttachment;
    if (serviceAttachmentValue != null) {
      map['serviceAttachment'] = serviceAttachmentValue;
    }
    return map;
  }

  factory AiFeatureOnlineStoreDedicatedServingEndpoint.fromMap(
      Map<String, dynamic> map) {
    return AiFeatureOnlineStoreDedicatedServingEndpoint(
      privateServiceConnectConfig: map['privateServiceConnectConfig'] == null
          ? null
          : AiFeatureOnlineStoreDedicatedServingEndpointPrivateServiceConnectConfig
              .fromMap((map['privateServiceConnectConfig'] as Map)
                  .cast<String, dynamic>()),
      publicEndpointDomainName: map['publicEndpointDomainName'] == null
          ? null
          : map['publicEndpointDomainName'] as String,
      serviceAttachment: map['serviceAttachment'] == null
          ? null
          : map['serviceAttachment'] as String,
    );
  }
}
