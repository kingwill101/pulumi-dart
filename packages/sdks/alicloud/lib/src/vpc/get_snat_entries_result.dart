// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snat_entries_entry.dart';

/// Result data returned by getSnatEntries.
class GetSnatEntriesResult {
  /// A list of Snat Entries. Each element contains the following attributes:
  final List<GetSnatEntriesEntry> entries;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// (Optional) A list of Snat Entries IDs.
  final List<String> ids;
  final String? nameRegex;

  /// A list of Snat Entries names.
  final List<String> names;
  final String? outputFile;

  /// The name of snat entry.
  final String? snatEntryName;

  /// The public IP of the Snat Entry.
  final String? snatIp;
  final String snatTableId;

  /// The source CIDR block of the Snat Entry.
  final String? sourceCidr;

  /// The source vswitch ID.
  final String? sourceVswitchId;

  /// The status of the Snat Entry.
  final String? status;

  /// Creates a new [GetSnatEntriesResult].
  /// [entries] A list of Snat Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] (Optional) A list of Snat Entries IDs.
  /// [nameRegex] Optional.
  /// [names] A list of Snat Entries names.
  /// [outputFile] Optional.
  /// [snatEntryName] The name of snat entry.
  /// [snatIp] The public IP of the Snat Entry.
  /// [snatTableId] Required.
  /// [sourceCidr] The source CIDR block of the Snat Entry.
  /// [sourceVswitchId] The source vswitch ID.
  /// [status] The status of the Snat Entry.
  GetSnatEntriesResult({
    required this.entries,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.snatEntryName,
    this.snatIp,
    required this.snatTableId,
    this.sourceCidr,
    this.sourceVswitchId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries':
          pulumi.Input.encodeList<GetSnatEntriesEntry, Map<String, dynamic>>(
            entries,
            (value) => value.toMap(),
          ),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'snatEntryName': ?snatEntryName,
      'snatIp': ?snatIp,
      'snatTableId': snatTableId,
      'sourceCidr': ?sourceCidr,
      'sourceVswitchId': ?sourceVswitchId,
      'status': ?status,
    };
  }

  factory GetSnatEntriesResult.fromMap(Map<String, dynamic> map) {
    return GetSnatEntriesResult(
      entries: pulumi.Input.decodeList<GetSnatEntriesEntry>(
        map['entries']!,
        (value) =>
            GetSnatEntriesEntry.fromMap((value as Map).cast<String, dynamic>()),
      ),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      snatEntryName: (() {
        final guardedValue = map['snatEntryName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      snatIp: (() {
        final guardedValue = map['snatIp'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      snatTableId: map['snatTableId'] as String,
      sourceCidr: (() {
        final guardedValue = map['sourceCidr'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      sourceVswitchId: (() {
        final guardedValue = map['sourceVswitchId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
