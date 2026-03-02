// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bastionhost_get_host_groups_get_host_groups_args_doc}
/// Arguments for getHostGroups.
/// {@endtemplate}
/// {@macro pulumi_bastionhost_get_host_groups_get_host_groups_args_doc}
class GetHostGroupsArgs {
  /// Specify the New Host Group Name, Supports up to 128 Characters.
  final pulumi.Input<String>? hostGroupName;
  /// A list of Host Group IDs.
  final pulumi.Input<List<String>>? ids;
  /// Specify the New Host Group Where the Bastion Host ID of.
  final pulumi.Input<String> instanceId;
  /// A regex string to filter results by Host Group name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetHostGroupsArgs].
  /// [hostGroupName] Specify the New Host Group Name, Supports up to 128 Characters.
  /// [ids] A list of Host Group IDs.
  /// [instanceId] Specify the New Host Group Where the Bastion Host ID of.
  /// [nameRegex] A regex string to filter results by Host Group name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetHostGroupsArgs({
    this.hostGroupName,
    this.ids,
    required this.instanceId,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostGroupName': ?hostGroupName,
      'ids': ?ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetHostGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetHostGroupsArgs(
      hostGroupName: map['hostGroupName'] == null ? null : (map['hostGroupName']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      instanceId: (map['instanceId'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
    );
  }
}

