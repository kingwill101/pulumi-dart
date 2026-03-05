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
    this.diskType,
    this.ids,
    this.instanceId,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

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
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

