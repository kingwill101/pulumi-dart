// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_spec_deployment_spec_psc_interface_config_dns_peering_config.dart';

class AiReasoningEngineSpecDeploymentSpecPscInterfaceConfig {
  /// Optional. DNS peering configurations.
  /// When specified, Vertex AI will attempt to configure DNS
  /// peering zones in the tenant project VPC to resolve the
  /// specified domains using the target network's Cloud DNS.
  /// The user must grant the dns.peer role to the Vertex AI
  /// service Agent on the target project.
  /// Structure is documented below.
  final List<
          AiReasoningEngineSpecDeploymentSpecPscInterfaceConfigDnsPeeringConfig>?
      dnsPeeringConfigs;

  /// Optional. The name of the Compute Engine network attachment
  /// to attach to the resource within the region and user project.
  /// To specify this field, you must have already created a network attachment.
  /// This field is only used for resources using PSC-Interface.
  final String? networkAttachment;

  /// Creates a new [AiReasoningEngineSpecDeploymentSpecPscInterfaceConfig].
  /// [dnsPeeringConfigs] Optional. DNS peering configurations.
  /// [networkAttachment] Optional. The name of the Compute Engine network attachment
  AiReasoningEngineSpecDeploymentSpecPscInterfaceConfig({
    this.dnsPeeringConfigs,
    this.networkAttachment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dnsPeeringConfigsValue = dnsPeeringConfigs;
    if (dnsPeeringConfigsValue != null) {
      map['dnsPeeringConfigs'] = pulumi.Input.encodeList<
          AiReasoningEngineSpecDeploymentSpecPscInterfaceConfigDnsPeeringConfig,
          Map<String,
              dynamic>>(dnsPeeringConfigsValue, (value) => value.toMap());
    }
    final networkAttachmentValue = networkAttachment;
    if (networkAttachmentValue != null) {
      map['networkAttachment'] = networkAttachmentValue;
    }
    return map;
  }

  factory AiReasoningEngineSpecDeploymentSpecPscInterfaceConfig.fromMap(
      Map<String, dynamic> map) {
    return AiReasoningEngineSpecDeploymentSpecPscInterfaceConfig(
      dnsPeeringConfigs: map['dnsPeeringConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  AiReasoningEngineSpecDeploymentSpecPscInterfaceConfigDnsPeeringConfig>(
              map['dnsPeeringConfigs'],
              (value) =>
                  AiReasoningEngineSpecDeploymentSpecPscInterfaceConfigDnsPeeringConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
      networkAttachment: map['networkAttachment'] == null
          ? null
          : map['networkAttachment'] as String,
    );
  }
}
