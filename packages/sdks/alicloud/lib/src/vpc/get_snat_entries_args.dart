// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_snat_entries_get_snat_entries_args_doc}
/// Arguments for getSnatEntries.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_snat_entries_get_snat_entries_args_doc}
class GetSnatEntriesArgs {
  /// A list of Snat Entries IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by the resource name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The name of snat entry.
  final pulumi.Input<String>? snatEntryName;
  /// The public IP of the Snat Entry.
  final pulumi.Input<String>? snatIp;
  /// The ID of the Snat table.
  final pulumi.Input<String> snatTableId;
  /// The source CIDR block of the Snat Entry.
  final pulumi.Input<String>? sourceCidr;
  /// The source vswitch ID.
  final pulumi.Input<String>? sourceVswitchId;
  /// The status of the Snat Entry. Valid values: `Available`, `Deleting` and `Pending`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetSnatEntriesArgs].
  /// [ids] A list of Snat Entries IDs.
  /// [nameRegex] A regex string to filter results by the resource name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [snatEntryName] The name of snat entry.
  /// [snatIp] The public IP of the Snat Entry.
  /// [snatTableId] The ID of the Snat table.
  /// [sourceCidr] The source CIDR block of the Snat Entry.
  /// [sourceVswitchId] The source vswitch ID.
  /// [status] The status of the Snat Entry. Valid values: `Available`, `Deleting` and `Pending`.
  GetSnatEntriesArgs({
    this.ids,
    this.nameRegex,
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
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'snatEntryName': ?snatEntryName,
      'snatIp': ?snatIp,
      'snatTableId': snatTableId,
      'sourceCidr': ?sourceCidr,
      'sourceVswitchId': ?sourceVswitchId,
      'status': ?status,
    };
  }

  factory GetSnatEntriesArgs.fromMap(Map<String, dynamic> map) {
    return GetSnatEntriesArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      snatEntryName: map['snatEntryName'] == null ? null : (map['snatEntryName'] as String).input(),
      snatIp: map['snatIp'] == null ? null : (map['snatIp'] as String).input(),
      snatTableId: (map['snatTableId'] as String).input(),
      sourceCidr: map['sourceCidr'] == null ? null : (map['sourceCidr'] as String).input(),
      sourceVswitchId: map['sourceVswitchId'] == null ? null : (map['sourceVswitchId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

