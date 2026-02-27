// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_psc_instance_config_psc_auto_connection/instance_psc_instance_config_psc_auto_connection.dart';
import '../instance_psc_instance_config_psc_interface_config/instance_psc_instance_config_psc_interface_config.dart';

class InstancePscInstanceConfig {
  /// List of consumer projects that are allowed to create PSC endpoints to service-attachments to this instance.
  /// These should be specified as project numbers only.
  final List<String>? allowedConsumerProjects;

  /// Configurations for setting up PSC service automation.
  /// Structure is documented below.
  final List<InstancePscInstanceConfigPscAutoConnection>? pscAutoConnections;

  /// (Output)
  /// The DNS name of the instance for PSC connectivity.
  /// Name convention: <uid>.<uid>.<region>.alloydb-psc.goog
  final String? pscDnsName;

  /// Configurations for setting up PSC interfaces attached to the instance
  /// which are used for outbound connectivity. Currently, AlloyDB supports only 0 or 1 PSC interface.
  /// Structure is documented below.
  final List<InstancePscInstanceConfigPscInterfaceConfig>? pscInterfaceConfigs;

  /// (Output)
  /// The service attachment created when Private Service Connect (PSC) is enabled for the instance.
  /// The name of the resource will be in the format of
  /// `projects/<alloydb-tenant-project-number>/regions/<region-name>/serviceAttachments/<service-attachment-name>`
  final String? serviceAttachmentLink;

  InstancePscInstanceConfig({
    this.allowedConsumerProjects,
    this.pscAutoConnections,
    this.pscDnsName,
    this.pscInterfaceConfigs,
    this.serviceAttachmentLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedConsumerProjectsValue = allowedConsumerProjects;
    if (allowedConsumerProjectsValue != null) {
      map['allowedConsumerProjects'] = allowedConsumerProjectsValue;
    }
    final pscAutoConnectionsValue = pscAutoConnections;
    if (pscAutoConnectionsValue != null) {
      map['pscAutoConnections'] = pulumi.Input.encodeList<
              InstancePscInstanceConfigPscAutoConnection, Map<String, dynamic>>(
          pscAutoConnectionsValue, (value) => value.toMap());
    }
    final pscDnsNameValue = pscDnsName;
    if (pscDnsNameValue != null) {
      map['pscDnsName'] = pscDnsNameValue;
    }
    final pscInterfaceConfigsValue = pscInterfaceConfigs;
    if (pscInterfaceConfigsValue != null) {
      map['pscInterfaceConfigs'] = pulumi.Input.encodeList<
              InstancePscInstanceConfigPscInterfaceConfig,
              Map<String, dynamic>>(
          pscInterfaceConfigsValue, (value) => value.toMap());
    }
    final serviceAttachmentLinkValue = serviceAttachmentLink;
    if (serviceAttachmentLinkValue != null) {
      map['serviceAttachmentLink'] = serviceAttachmentLinkValue;
    }
    return map;
  }

  factory InstancePscInstanceConfig.fromMap(Map<String, dynamic> map) {
    return InstancePscInstanceConfig(
      allowedConsumerProjects: map['allowedConsumerProjects'] == null
          ? null
          : (map['allowedConsumerProjects'] as List).cast<String>(),
      pscAutoConnections: map['pscAutoConnections'] == null
          ? null
          : pulumi.Input.decodeList<InstancePscInstanceConfigPscAutoConnection>(
              map['pscAutoConnections'],
              (value) => InstancePscInstanceConfigPscAutoConnection.fromMap(
                  (value as Map).cast<String, dynamic>())),
      pscDnsName:
          map['pscDnsName'] == null ? null : map['pscDnsName'] as String,
      pscInterfaceConfigs: map['pscInterfaceConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  InstancePscInstanceConfigPscInterfaceConfig>(
              map['pscInterfaceConfigs'],
              (value) => InstancePscInstanceConfigPscInterfaceConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      serviceAttachmentLink: map['serviceAttachmentLink'] == null
          ? null
          : map['serviceAttachmentLink'] as String,
    );
  }
}
