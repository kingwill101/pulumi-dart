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
    pulumi.Output<String>? externalIp,
    pulumi.Output<String>? externalPort,
    pulumi.Output<String>? forwardEntryName,
    required pulumi.Output<String> forwardTableId,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? internalIp,
    pulumi.Output<String>? internalPort,
    pulumi.Output<String>? ipProtocol,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
  }) :
      externalIp = pulumi.Input.asOptionalInput<String>(externalIp),
      externalPort = pulumi.Input.asOptionalInput<String>(externalPort),
      forwardEntryName = pulumi.Input.asOptionalInput<String>(forwardEntryName),
      forwardTableId = pulumi.Input.asInput<String>(forwardTableId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      internalIp = pulumi.Input.asOptionalInput<String>(internalIp),
      internalPort = pulumi.Input.asOptionalInput<String>(internalPort),
      ipProtocol = pulumi.Input.asOptionalInput<String>(ipProtocol),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      externalIp: map['externalIp'] == null ? null : pulumi.Output.create<String>(map['externalIp'] as String),
      externalPort: map['externalPort'] == null ? null : pulumi.Output.create<String>(map['externalPort'] as String),
      forwardEntryName: map['forwardEntryName'] == null ? null : pulumi.Output.create<String>(map['forwardEntryName'] as String),
      forwardTableId: pulumi.Output.create<String>(map['forwardTableId'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      internalIp: map['internalIp'] == null ? null : pulumi.Output.create<String>(map['internalIp'] as String),
      internalPort: map['internalPort'] == null ? null : pulumi.Output.create<String>(map['internalPort'] as String),
      ipProtocol: map['ipProtocol'] == null ? null : pulumi.Output.create<String>(map['ipProtocol'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

