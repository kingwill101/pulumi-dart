// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_bgp_groups_get_bgp_groups_args_doc}
/// Arguments for getBgpGroups.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_bgp_groups_get_bgp_groups_args_doc}
class GetBgpGroupsArgs {
  /// A list of Bgp Group IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Bgp Group name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the virtual border router (VBR) that is associated with the BGP group.
  final pulumi.Input<String>? routerId;
  /// The status of the resource. Valid values: `Available`, `Deleting` and `Pending`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetBgpGroupsArgs].
  /// [ids] A list of Bgp Group IDs.
  /// [nameRegex] A regex string to filter results by Bgp Group name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [routerId] The ID of the virtual border router (VBR) that is associated with the BGP group.
  /// [status] The status of the resource. Valid values: `Available`, `Deleting` and `Pending`.
  GetBgpGroupsArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.routerId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'routerId': ?routerId,
      'status': ?status,
    };
  }

  factory GetBgpGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetBgpGroupsArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      routerId: map['routerId'] == null ? null : (map['routerId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

