// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cr_get_vpc_endpoint_linked_vpcs_get_vpc_endpoint_linked_vpcs_args_doc}
/// Arguments for getVpcEndpointLinkedVpcs.
/// {@endtemplate}
/// {@macro pulumi_cr_get_vpc_endpoint_linked_vpcs_get_vpc_endpoint_linked_vpcs_args_doc}
class GetVpcEndpointLinkedVpcsArgs {
  /// A list of CR Vpc Endpoint Linked Vpc IDs.
  final pulumi.Input<List<String>>? ids;
  /// The ID of the instance.
  final pulumi.Input<String> instanceId;
  /// The name of the module that you want to access. Valid Values:
  /// - `Registry`: the image repository.
  /// - `Chart`: a Helm chart.
  final pulumi.Input<String> moduleName;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the Vpc Endpoint Linked Vpc. Valid Values: `CREATING`, `RUNNING`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetVpcEndpointLinkedVpcsArgs].
  /// [ids] A list of CR Vpc Endpoint Linked Vpc IDs.
  /// [instanceId] The ID of the instance.
  /// [moduleName] The name of the module that you want to access. Valid Values:
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the Vpc Endpoint Linked Vpc. Valid Values: `CREATING`, `RUNNING`.
  GetVpcEndpointLinkedVpcsArgs({
    this.ids,
    required this.instanceId,
    required this.moduleName,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'instanceId': instanceId,
      'moduleName': moduleName,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetVpcEndpointLinkedVpcsArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointLinkedVpcsArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      instanceId: (map['instanceId'] as String).input(),
      moduleName: (map['moduleName'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

