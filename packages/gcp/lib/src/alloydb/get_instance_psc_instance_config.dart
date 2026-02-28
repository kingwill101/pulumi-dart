// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_psc_instance_config_psc_auto_connection.dart';
import 'get_instance_psc_instance_config_psc_interface_config.dart';

class GetInstancePscInstanceConfig {
  /// List of consumer projects that are allowed to create PSC endpoints to service-attachments to this instance.
  /// These should be specified as project numbers only.
  final List<String> allowedConsumerProjects;
  /// Configurations for setting up PSC service automation.
  final List<GetInstancePscInstanceConfigPscAutoConnection> pscAutoConnections;
  /// The DNS name of the instance for PSC connectivity.
  /// Name convention: <uid>.<uid>.<region>.alloydb-psc.goog
  final String pscDnsName;
  /// Configurations for setting up PSC interfaces attached to the instance
  /// which are used for outbound connectivity. Currently, AlloyDB supports only 0 or 1 PSC interface.
  final List<GetInstancePscInstanceConfigPscInterfaceConfig> pscInterfaceConfigs;
  /// The service attachment created when Private Service Connect (PSC) is enabled for the instance.
  /// The name of the resource will be in the format of
  /// 'projects/<alloydb-tenant-project-number>/regions/<region-name>/serviceAttachments/<service-attachment-name>'
  final String serviceAttachmentLink;

  /// Creates a new [GetInstancePscInstanceConfig].
  /// [allowedConsumerProjects] List of consumer projects that are allowed to create PSC endpoints to service-attachments to this instance.
  /// [pscAutoConnections] Configurations for setting up PSC service automation.
  /// [pscDnsName] The DNS name of the instance for PSC connectivity.
  /// [pscInterfaceConfigs] Configurations for setting up PSC interfaces attached to the instance
  /// [serviceAttachmentLink] The service attachment created when Private Service Connect (PSC) is enabled for the instance.
  GetInstancePscInstanceConfig({
    required this.allowedConsumerProjects,
    required this.pscAutoConnections,
    required this.pscDnsName,
    required this.pscInterfaceConfigs,
    required this.serviceAttachmentLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedConsumerProjects': allowedConsumerProjects,
      'pscAutoConnections': pulumi.Input.encodeList<GetInstancePscInstanceConfigPscAutoConnection, Map<String, dynamic>>(pscAutoConnections, (value) => value.toMap()),
      'pscDnsName': pscDnsName,
      'pscInterfaceConfigs': pulumi.Input.encodeList<GetInstancePscInstanceConfigPscInterfaceConfig, Map<String, dynamic>>(pscInterfaceConfigs, (value) => value.toMap()),
      'serviceAttachmentLink': serviceAttachmentLink,
    };
  }

  factory GetInstancePscInstanceConfig.fromMap(Map<String, dynamic> map) {
    return GetInstancePscInstanceConfig(
      allowedConsumerProjects: (map['allowedConsumerProjects'] as List).cast<String>(),
      pscAutoConnections: pulumi.Input.decodeList<GetInstancePscInstanceConfigPscAutoConnection>(map['pscAutoConnections'], (value) => GetInstancePscInstanceConfigPscAutoConnection.fromMap((value as Map).cast<String, dynamic>())),
      pscDnsName: map['pscDnsName'] as String,
      pscInterfaceConfigs: pulumi.Input.decodeList<GetInstancePscInstanceConfigPscInterfaceConfig>(map['pscInterfaceConfigs'], (value) => GetInstancePscInstanceConfigPscInterfaceConfig.fromMap((value as Map).cast<String, dynamic>())),
      serviceAttachmentLink: map['serviceAttachmentLink'] as String,
    );
  }
}

