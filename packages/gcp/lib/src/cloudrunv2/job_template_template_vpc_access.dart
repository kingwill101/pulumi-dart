// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_template_vpc_access_network_interface.dart';

class JobTemplateTemplateVpcAccess {
  /// VPC Access connector name. Format: projects/{project}/locations/{location}/connectors/{connector}, where {project} can be project id or number.
  final String? connector;

  /// Traffic VPC egress settings.
  /// Possible values are: `ALL_TRAFFIC`, `PRIVATE_RANGES_ONLY`.
  final String? egress;

  /// Direct VPC egress settings. Currently only single network interface is supported.
  /// Structure is documented below.
  final List<JobTemplateTemplateVpcAccessNetworkInterface>? networkInterfaces;

  /// Creates a new [JobTemplateTemplateVpcAccess].
  /// [connector] VPC Access connector name. Format: projects/{project}/locations/{location}/connectors/{connector}, where {project} can be project id or number.
  /// [egress] Traffic VPC egress settings.
  /// [networkInterfaces] Direct VPC egress settings. Currently only single network interface is supported.
  JobTemplateTemplateVpcAccess({
    this.connector,
    this.egress,
    this.networkInterfaces,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectorValue = connector;
    if (connectorValue != null) {
      map['connector'] = connectorValue;
    }
    final egressValue = egress;
    if (egressValue != null) {
      map['egress'] = egressValue;
    }
    final networkInterfacesValue = networkInterfaces;
    if (networkInterfacesValue != null) {
      map['networkInterfaces'] = pulumi.Input.encodeList<
              JobTemplateTemplateVpcAccessNetworkInterface,
              Map<String, dynamic>>(
          networkInterfacesValue, (value) => value.toMap());
    }
    return map;
  }

  factory JobTemplateTemplateVpcAccess.fromMap(Map<String, dynamic> map) {
    return JobTemplateTemplateVpcAccess(
      connector: map['connector'] == null ? null : map['connector'] as String,
      egress: map['egress'] == null ? null : map['egress'] as String,
      networkInterfaces: map['networkInterfaces'] == null
          ? null
          : pulumi.Input.decodeList<
                  JobTemplateTemplateVpcAccessNetworkInterface>(
              map['networkInterfaces'],
              (value) => JobTemplateTemplateVpcAccessNetworkInterface.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
