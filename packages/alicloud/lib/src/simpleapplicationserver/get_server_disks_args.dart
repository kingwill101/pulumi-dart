// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_simpleapplicationserver_get_server_disks_get_server_disks_args_doc}
/// Arguments for getServerDisks.
/// {@endtemplate}
/// {@macro pulumi_simpleapplicationserver_get_server_disks_get_server_disks_args_doc}
class GetServerDisksArgs {
  /// The type of the disk. Possible values: `System`, `Data`.
  final pulumi.Input<String>? diskType;
  /// A list of Disk IDs.
  final pulumi.Input<List<String>>? ids;
  /// The ID of the simple application server to which the disk is attached.
  final pulumi.Input<String>? instanceId;
  /// A regex string to filter results by Disk name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the disk. Valid values: `ReIniting`, `Creating`, `In_Use`, `Available`, `Attaching`, `Detaching`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetServerDisksArgs].
  /// [diskType] The type of the disk. Possible values: `System`, `Data`.
  /// [ids] A list of Disk IDs.
  /// [instanceId] The ID of the simple application server to which the disk is attached.
  /// [nameRegex] A regex string to filter results by Disk name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the disk. Valid values: `ReIniting`, `Creating`, `In_Use`, `Available`, `Attaching`, `Detaching`.
  GetServerDisksArgs({
    String? diskType,
    List<String>? ids,
    String? instanceId,
    String? nameRegex,
    String? outputFile,
    String? status,
  }) :
      diskType = pulumi.Input.asOptionalInput<String>(diskType),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskType': ?diskType,
      'ids': ?ids,
      'instanceId': ?instanceId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetServerDisksArgs.fromMap(Map<String, dynamic> map) {
    return GetServerDisksArgs(
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] == null ? null : map['instanceId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

