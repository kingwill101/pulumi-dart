// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_forward_entries_entry.dart';

/// Result data returned by getForwardEntries.
class GetForwardEntriesResult {
  /// A list of Forward Entries. Each element contains the following attributes:
  final List<GetForwardEntriesEntry> entries;
  /// The public IP address.
  final String? externalIp;
  /// The public port.
  final String? externalPort;
  /// The name of forward entry.
  final String? forwardEntryName;
  final String forwardTableId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Forward Entries IDs.
  final List<String> ids;
  /// The private IP address.
  final String? internalIp;
  /// The private port.
  final String? internalPort;
  /// The protocol type.
  final String? ipProtocol;
  final String? nameRegex;
  /// A list of Forward Entries names.
  final List<String> names;
  final String? outputFile;
  /// The status of forward entry.
  final String? status;

  /// Creates a new [GetForwardEntriesResult].
  /// [entries] A list of Forward Entries. Each element contains the following attributes:
  /// [externalIp] The public IP address.
  /// [externalPort] The public port.
  /// [forwardEntryName] The name of forward entry.
  /// [forwardTableId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Forward Entries IDs.
  /// [internalIp] The private IP address.
  /// [internalPort] The private port.
  /// [ipProtocol] The protocol type.
  /// [nameRegex] Optional.
  /// [names] A list of Forward Entries names.
  /// [outputFile] Optional.
  /// [status] The status of forward entry.
  GetForwardEntriesResult({
    required this.entries,
    this.externalIp,
    this.externalPort,
    this.forwardEntryName,
    required this.forwardTableId,
    required this.id,
    required this.ids,
    this.internalIp,
    this.internalPort,
    this.ipProtocol,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries': pulumi.Input.encodeList<GetForwardEntriesEntry, Map<String, dynamic>>(entries, (value) => value.toMap()),
      'externalIp': ?externalIp,
      'externalPort': ?externalPort,
      'forwardEntryName': ?forwardEntryName,
      'forwardTableId': forwardTableId,
      'id': id,
      'ids': ids,
      'internalIp': ?internalIp,
      'internalPort': ?internalPort,
      'ipProtocol': ?ipProtocol,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetForwardEntriesResult.fromMap(Map<String, dynamic> map) {
    return GetForwardEntriesResult(
      entries: pulumi.Input.decodeList<GetForwardEntriesEntry>(map['entries']!, (value) => GetForwardEntriesEntry.fromMap((value as Map).cast<String, dynamic>())),
      externalIp: (() { final guardedValue = map['externalIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      externalPort: (() { final guardedValue = map['externalPort']; if (guardedValue == null) return null; return guardedValue as String; })(),
      forwardEntryName: (() { final guardedValue = map['forwardEntryName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      forwardTableId: map['forwardTableId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      internalIp: (() { final guardedValue = map['internalIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      internalPort: (() { final guardedValue = map['internalPort']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipProtocol: (() { final guardedValue = map['ipProtocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

