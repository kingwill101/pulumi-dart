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
    pulumi.Output<String>? hostGroupName,
    pulumi.Output<List<String>>? ids,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
  }) :
      hostGroupName = pulumi.Input.asOptionalInput<String>(hostGroupName),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

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
      hostGroupName: map['hostGroupName'] == null ? null : pulumi.Output.create<String>(map['hostGroupName'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

