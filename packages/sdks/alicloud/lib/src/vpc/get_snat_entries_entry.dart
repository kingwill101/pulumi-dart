// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSnatEntriesEntry {
  /// The ID of the Snat Entry.
  final pulumi.Input<String> id;
  /// The ID of snat entry.
  final pulumi.Input<String> snatEntryId;
  /// The name of snat entry.
  final pulumi.Input<String> snatEntryName;
  /// The public IP of the Snat Entry.
  final pulumi.Input<String> snatIp;
  /// The source CIDR block of the Snat Entry.
  final pulumi.Input<String> sourceCidr;
  /// The source vswitch ID.
  final pulumi.Input<String> sourceVswitchId;
  /// The status of the Snat Entry. Valid values: `Available`, `Deleting` and `Pending`.
  final pulumi.Input<String> status;

  /// Creates a new [GetSnatEntriesEntry].
  /// [id] The ID of the Snat Entry.
  /// [snatEntryId] The ID of snat entry.
  /// [snatEntryName] The name of snat entry.
  /// [snatIp] The public IP of the Snat Entry.
  /// [sourceCidr] The source CIDR block of the Snat Entry.
  /// [sourceVswitchId] The source vswitch ID.
  /// [status] The status of the Snat Entry. Valid values: `Available`, `Deleting` and `Pending`.
  GetSnatEntriesEntry({
    required this.id,
    required this.snatEntryId,
    required this.snatEntryName,
    required this.snatIp,
    required this.sourceCidr,
    required this.sourceVswitchId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'snatEntryId': snatEntryId,
      'snatEntryName': snatEntryName,
      'snatIp': snatIp,
      'sourceCidr': sourceCidr,
      'sourceVswitchId': sourceVswitchId,
      'status': status,
    };
  }

  factory GetSnatEntriesEntry.fromMap(Map<String, dynamic> map) {
    return GetSnatEntriesEntry(
      id: (map['id'] as String).input(),
      snatEntryId: (map['snatEntryId'] as String).input(),
      snatEntryName: (map['snatEntryName'] as String).input(),
      snatIp: (map['snatIp'] as String).input(),
      sourceCidr: (map['sourceCidr'] as String).input(),
      sourceVswitchId: (map['sourceVswitchId'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

