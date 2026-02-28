// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_template_vpc_access_network_interface.dart';

class GetServiceTemplateVpcAccess {
  /// VPC Access connector name. Format: projects/{project}/locations/{location}/connectors/{connector}, where {project} can be project id or number.
  final String connector;

  /// Traffic VPC egress settings. Possible values: ["ALL_TRAFFIC", "PRIVATE_RANGES_ONLY"]
  final String egress;

  /// Direct VPC egress settings. Currently only single network interface is supported.
  final List<GetServiceTemplateVpcAccessNetworkInterface> networkInterfaces;

  /// Creates a new [GetServiceTemplateVpcAccess].
  /// [connector] VPC Access connector name. Format: projects/{project}/locations/{location}/connectors/{connector}, where {project} can be project id or number.
  /// [egress] Traffic VPC egress settings. Possible values: ["ALL_TRAFFIC", "PRIVATE_RANGES_ONLY"]
  /// [networkInterfaces] Direct VPC egress settings. Currently only single network interface is supported.
  GetServiceTemplateVpcAccess({
    required this.connector,
    required this.egress,
    required this.networkInterfaces,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connector'] = connector;
    map['egress'] = egress;
    map['networkInterfaces'] = pulumi.Input.encodeList<
        GetServiceTemplateVpcAccessNetworkInterface,
        Map<String, dynamic>>(networkInterfaces, (value) => value.toMap());
    return map;
  }

  factory GetServiceTemplateVpcAccess.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateVpcAccess(
      connector: map['connector'] as String,
      egress: map['egress'] as String,
      networkInterfaces:
          pulumi.Input.decodeList<GetServiceTemplateVpcAccessNetworkInterface>(
              map['networkInterfaces'],
              (value) => GetServiceTemplateVpcAccessNetworkInterface.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
