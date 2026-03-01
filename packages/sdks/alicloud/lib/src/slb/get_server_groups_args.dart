// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_slb_get_server_groups_get_server_groups_args_doc}
/// Arguments for getServerGroups.
/// {@endtemplate}
/// {@macro pulumi_slb_get_server_groups_get_server_groups_args_doc}
class GetServerGroupsArgs {
  /// A list of VServer group IDs to filter results.
  final pulumi.Input<List<String>>? ids;
  /// ID of the SLB.
  final pulumi.Input<String> loadBalancerId;
  /// A regex string to filter results by VServer group name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetServerGroupsArgs].
  /// [ids] A list of VServer group IDs to filter results.
  /// [loadBalancerId] ID of the SLB.
  /// [nameRegex] A regex string to filter results by VServer group name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetServerGroupsArgs({
    pulumi.Output<List<String>>? ids,
    required pulumi.Output<String> loadBalancerId,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      loadBalancerId = pulumi.Input.asInput<String>(loadBalancerId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'loadBalancerId': loadBalancerId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetServerGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetServerGroupsArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      loadBalancerId: pulumi.Output.create<String>(map['loadBalancerId'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

