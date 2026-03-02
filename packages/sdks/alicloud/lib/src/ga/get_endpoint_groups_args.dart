// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_get_endpoint_groups_get_endpoint_groups_args_doc}
/// Arguments for getEndpointGroups.
/// {@endtemplate}
/// {@macro pulumi_ga_get_endpoint_groups_get_endpoint_groups_args_doc}
class GetEndpointGroupsArgs {
  /// The ID of the Global Accelerator instance to which the endpoint group will be added.
  final pulumi.Input<String> acceleratorId;
  /// The endpoint group type. Default value: `default`. Valid values: `default`, `virtual`.
  final pulumi.Input<String>? endpointGroupType;
  /// A list of Endpoint Group IDs.
  final pulumi.Input<List<String>>? ids;
  /// The ID of the listener that is associated with the endpoint group.
  final pulumi.Input<String>? listenerId;
  /// A regex string to filter results by Endpoint Group name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the endpoint group. Valid values: `active`, `configuring`, `creating`, `init`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetEndpointGroupsArgs].
  /// [acceleratorId] The ID of the Global Accelerator instance to which the endpoint group will be added.
  /// [endpointGroupType] The endpoint group type. Default value: `default`. Valid values: `default`, `virtual`.
  /// [ids] A list of Endpoint Group IDs.
  /// [listenerId] The ID of the listener that is associated with the endpoint group.
  /// [nameRegex] A regex string to filter results by Endpoint Group name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the endpoint group. Valid values: `active`, `configuring`, `creating`, `init`.
  GetEndpointGroupsArgs({
    required this.acceleratorId,
    this.endpointGroupType,
    this.ids,
    this.listenerId,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'endpointGroupType': ?endpointGroupType,
      'ids': ?ids,
      'listenerId': ?listenerId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetEndpointGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetEndpointGroupsArgs(
      acceleratorId: (map['acceleratorId'] as String).input(),
      endpointGroupType: map['endpointGroupType'] == null ? null : (map['endpointGroupType']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      listenerId: map['listenerId'] == null ? null : (map['listenerId']! as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

