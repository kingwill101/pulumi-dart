// ignore_for_file: unused_element, unnecessary_cast


class GetSnatEntriesEntry {
  /// The ID of the Snat Entry.
  final String id;
  /// The ID of snat entry.
  final String snatEntryId;
  /// The name of snat entry.
  final String snatEntryName;
  /// The public IP of the Snat Entry.
  final String snatIp;
  /// The source CIDR block of the Snat Entry.
  final String sourceCidr;
  /// The source vswitch ID.
  final String sourceVswitchId;
  /// The status of the Snat Entry. Valid values: `Available`, `Deleting` and `Pending`.
  final String status;

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
      id: map['id'] as String,
      snatEntryId: map['snatEntryId'] as String,
      snatEntryName: map['snatEntryName'] as String,
      snatIp: map['snatIp'] as String,
      sourceCidr: map['sourceCidr'] as String,
      sourceVswitchId: map['sourceVswitchId'] as String,
      status: map['status'] as String,
    );
  }
}

