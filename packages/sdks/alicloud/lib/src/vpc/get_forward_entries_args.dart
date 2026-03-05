// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_forward_entries_get_forward_entries_args_doc}
/// Arguments for getForwardEntries.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_forward_entries_get_forward_entries_args_doc}
class GetForwardEntriesArgs {
  /// The public IP address.
  final pulumi.Input<String>? externalIp;
  /// The public port.
  final pulumi.Input<String>? externalPort;
  /// The name of forward entry.
  final pulumi.Input<String>? forwardEntryName;
  /// The ID of the Forward table.
  final pulumi.Input<String> forwardTableId;
  /// A list of Forward Entries IDs.
  final pulumi.Input<List<String>>? ids;
  /// The private IP address.
  final pulumi.Input<String>? internalIp;
  /// The internal port.
  final pulumi.Input<String>? internalPort;
  /// The ip protocol. Valid values: `any`,`tcp` and `udp`.
  final pulumi.Input<String>? ipProtocol;
  /// A regex string to filter results by forward entry name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of farward entry. Valid value `Available`, `Deleting` and `Pending`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetForwardEntriesArgs].
  /// [externalIp] The public IP address.
  /// [externalPort] The public port.
  /// [forwardEntryName] The name of forward entry.
  /// [forwardTableId] The ID of the Forward table.
  /// [ids] A list of Forward Entries IDs.
  /// [internalIp] The private IP address.
  /// [internalPort] The internal port.
  /// [ipProtocol] The ip protocol. Valid values: `any`,`tcp` and `udp`.
  /// [nameRegex] A regex string to filter results by forward entry name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of farward entry. Valid value `Available`, `Deleting` and `Pending`.
  GetForwardEntriesArgs({
    this.externalIp,
    this.externalPort,
    this.forwardEntryName,
    required this.forwardTableId,
    this.ids,
    this.internalIp,
    this.internalPort,
    this.ipProtocol,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIp': ?externalIp,
      'externalPort': ?externalPort,
      'forwardEntryName': ?forwardEntryName,
      'forwardTableId': forwardTableId,
      'ids': ?ids,
      'internalIp': ?internalIp,
      'internalPort': ?internalPort,
      'ipProtocol': ?ipProtocol,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetForwardEntriesArgs.fromMap(Map<String, dynamic> map) {
    return GetForwardEntriesArgs(
      externalIp: (() { final guardedValue = map['externalIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalPort: (() { final guardedValue = map['externalPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forwardEntryName: (() { final guardedValue = map['forwardEntryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forwardTableId: pulumi.Input.fromValue(map['forwardTableId'] as String),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      internalIp: (() { final guardedValue = map['internalIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internalPort: (() { final guardedValue = map['internalPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipProtocol: (() { final guardedValue = map['ipProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

