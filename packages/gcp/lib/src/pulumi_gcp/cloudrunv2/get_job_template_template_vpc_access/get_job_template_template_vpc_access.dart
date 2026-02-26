// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_job_template_template_vpc_access_network_interface/get_job_template_template_vpc_access_network_interface.dart';

class GetJobTemplateTemplateVpcAccess {
  /// VPC Access connector name. Format: projects/{project}/locations/{location}/connectors/{connector}, where {project} can be project id or number.
  final String connector;

  /// Traffic VPC egress settings. Possible values: ["ALL_TRAFFIC", "PRIVATE_RANGES_ONLY"]
  final String egress;

  /// Direct VPC egress settings. Currently only single network interface is supported.
  final List<GetJobTemplateTemplateVpcAccessNetworkInterface> networkInterfaces;

  GetJobTemplateTemplateVpcAccess({
    required this.connector,
    required this.egress,
    required this.networkInterfaces,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connector'] = connector;
    map['egress'] = egress;
    map['networkInterfaces'] = Input.encodeList<
        GetJobTemplateTemplateVpcAccessNetworkInterface,
        Map<String, dynamic>>(networkInterfaces, (value) => value.toMap());
    return map;
  }

  factory GetJobTemplateTemplateVpcAccess.fromMap(Map<String, dynamic> map) {
    return GetJobTemplateTemplateVpcAccess(
      connector: map['connector'] as String,
      egress: map['egress'] as String,
      networkInterfaces:
          Input.decodeList<GetJobTemplateTemplateVpcAccessNetworkInterface>(
              map['networkInterfaces'],
              (value) =>
                  GetJobTemplateTemplateVpcAccessNetworkInterface.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
