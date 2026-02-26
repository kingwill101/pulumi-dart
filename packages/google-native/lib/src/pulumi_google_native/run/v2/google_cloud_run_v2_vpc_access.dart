// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_run_v2_network_interface.dart';
import 'google_cloud_run_v2_vpc_access_egress.dart';

/// VPC Access settings. For more information on sending traffic to a VPC network, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
class GoogleCloudRunV2VpcAccess {
  /// VPC Access connector name. Format: projects/{project}/locations/{location}/connectors/{connector}, where {project} can be project id or number. For more information on sending traffic to a VPC network via a connector, visit https://cloud.google.com/run/docs/configuring/vpc-connectors.
  final String? connector;

  /// Traffic VPC egress settings. If not provided, it defaults to PRIVATE_RANGES_ONLY.
  final GoogleCloudRunV2VpcAccessEgress? egress;

  /// Direct VPC egress settings. Currently only single network interface is supported.
  final List<GoogleCloudRunV2NetworkInterface>? networkInterfaces;

  GoogleCloudRunV2VpcAccess({
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
      map['egress'] = egressValue.value;
    }
    final networkInterfacesValue = networkInterfaces;
    if (networkInterfacesValue != null) {
      map['networkInterfaces'] = Input.encodeList<
              GoogleCloudRunV2NetworkInterface, Map<String, dynamic>>(
          networkInterfacesValue, (value) => value.toMap());
    }
    return map;
  }

  factory GoogleCloudRunV2VpcAccess.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2VpcAccess(
      connector: map['connector'] == null ? null : map['connector'] as String,
      egress: map['egress'] == null
          ? null
          : GoogleCloudRunV2VpcAccessEgress.fromValue(map['egress'] as String),
      networkInterfaces: map['networkInterfaces'] == null
          ? null
          : Input.decodeList<GoogleCloudRunV2NetworkInterface>(
              map['networkInterfaces'],
              (value) => GoogleCloudRunV2NetworkInterface.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
