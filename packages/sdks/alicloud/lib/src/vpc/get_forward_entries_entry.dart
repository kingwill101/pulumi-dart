// ignore_for_file: unused_element, unnecessary_cast


class GetForwardEntriesEntry {
  /// The public IP address.
  final String externalIp;
  /// The public port.
  final String externalPort;
  /// The forward entry ID.
  final String forwardEntryId;
  /// The name of forward entry.
  final String forwardEntryName;
  /// The ID of the Forward Entry.
  final String id;
  /// The private IP address.
  final String internalIp;
  /// The internal port.
  final String internalPort;
  /// The ip protocol. Valid values: `any`,`tcp` and `udp`.
  final String ipProtocol;
  /// The forward entry name.
  final String name;
  /// The status of farward entry. Valid value `Available`, `Deleting` and `Pending`.
  final String status;

  /// Creates a new [GetForwardEntriesEntry].
  /// [externalIp] The public IP address.
  /// [externalPort] The public port.
  /// [forwardEntryId] The forward entry ID.
  /// [forwardEntryName] The name of forward entry.
  /// [id] The ID of the Forward Entry.
  /// [internalIp] The private IP address.
  /// [internalPort] The internal port.
  /// [ipProtocol] The ip protocol. Valid values: `any`,`tcp` and `udp`.
  /// [name] The forward entry name.
  /// [status] The status of farward entry. Valid value `Available`, `Deleting` and `Pending`.
  GetForwardEntriesEntry({
    required this.externalIp,
    required this.externalPort,
    required this.forwardEntryId,
    required this.forwardEntryName,
    required this.id,
    required this.internalIp,
    required this.internalPort,
    required this.ipProtocol,
    required this.name,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIp': externalIp,
      'externalPort': externalPort,
      'forwardEntryId': forwardEntryId,
      'forwardEntryName': forwardEntryName,
      'id': id,
      'internalIp': internalIp,
      'internalPort': internalPort,
      'ipProtocol': ipProtocol,
      'name': name,
      'status': status,
    };
  }

  factory GetForwardEntriesEntry.fromMap(Map<String, dynamic> map) {
    return GetForwardEntriesEntry(
      externalIp: map['externalIp'] as String,
      externalPort: map['externalPort'] as String,
      forwardEntryId: map['forwardEntryId'] as String,
      forwardEntryName: map['forwardEntryName'] as String,
      id: map['id'] as String,
      internalIp: map['internalIp'] as String,
      internalPort: map['internalPort'] as String,
      ipProtocol: map['ipProtocol'] as String,
      name: map['name'] as String,
      status: map['status'] as String,
    );
  }
}

