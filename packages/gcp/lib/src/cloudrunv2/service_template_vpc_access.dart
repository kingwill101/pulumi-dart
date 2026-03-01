// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_template_vpc_access_network_interface.dart';

class ServiceTemplateVpcAccess {
  /// VPC Access connector name. Format: projects/{project}/locations/{location}/connectors/{connector}, where {project} can be project id or number.
  final String? connector;

  /// Traffic VPC egress settings.
  /// Possible values are: `ALL_TRAFFIC`, `PRIVATE_RANGES_ONLY`.
  final String? egress;

  /// Direct VPC egress settings. Currently only single network interface is supported.
  /// Structure is documented below.
  final List<ServiceTemplateVpcAccessNetworkInterface>? networkInterfaces;

  /// Creates a new [ServiceTemplateVpcAccess].
  /// [connector] VPC Access connector name. Format: projects/{project}/locations/{location}/connectors/{connector}, where {project} can be project id or number.
  /// [egress] Traffic VPC egress settings.
  /// [networkInterfaces] Direct VPC egress settings. Currently only single network interface is supported.
  ServiceTemplateVpcAccess({
    this.connector,
    this.egress,
    this.networkInterfaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connector': ?connector,
      'egress': ?egress,
      'networkInterfaces': ?networkInterfaces == null
          ? null
          : pulumi.Input.encodeList<
              ServiceTemplateVpcAccessNetworkInterface,
              Map<String, dynamic>
            >(networkInterfaces!, (value) => value.toMap()),
    };
  }

  factory ServiceTemplateVpcAccess.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateVpcAccess(
      connector: map['connector'] == null ? null : map['connector'] as String,
      egress: map['egress'] == null ? null : map['egress'] as String,
      networkInterfaces: map['networkInterfaces'] == null
          ? null
          : pulumi.Input.decodeList<ServiceTemplateVpcAccessNetworkInterface>(
              map['networkInterfaces'],
              (value) => ServiceTemplateVpcAccessNetworkInterface.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
