// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../worker_pool_template_vpc_access_network_interface/worker_pool_template_vpc_access_network_interface.dart';

class WorkerPoolTemplateVpcAccess {
  /// VPC Access connector name. Format: projects/{project}/locations/{location}/connectors/{connector}, where {project} can be project id or number.
  final String? connector;

  /// Traffic VPC egress settings.
  /// Possible values are: `ALL_TRAFFIC`, `PRIVATE_RANGES_ONLY`.
  final String? egress;

  /// Direct VPC egress settings. Currently only single network interface is supported.
  /// Structure is documented below.
  final List<WorkerPoolTemplateVpcAccessNetworkInterface>? networkInterfaces;

  WorkerPoolTemplateVpcAccess({
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
      map['networkInterfaces'] = Input.encodeList<
              WorkerPoolTemplateVpcAccessNetworkInterface,
              Map<String, dynamic>>(
          networkInterfacesValue, (value) => value.toMap());
    }
    return map;
  }

  factory WorkerPoolTemplateVpcAccess.fromMap(Map<String, dynamic> map) {
    return WorkerPoolTemplateVpcAccess(
      connector: map['connector'] == null ? null : map['connector'] as String,
      egress: map['egress'] == null ? null : map['egress'] as String,
      networkInterfaces: map['networkInterfaces'] == null
          ? null
          : Input.decodeList<WorkerPoolTemplateVpcAccessNetworkInterface>(
              map['networkInterfaces'],
              (value) => WorkerPoolTemplateVpcAccessNetworkInterface.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
