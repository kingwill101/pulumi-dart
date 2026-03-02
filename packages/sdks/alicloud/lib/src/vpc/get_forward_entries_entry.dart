// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetForwardEntriesEntry {
  /// The public IP address.
  final pulumi.Input<String> externalIp;
  /// The public port.
  final pulumi.Input<String> externalPort;
  /// The forward entry ID.
  final pulumi.Input<String> forwardEntryId;
  /// The name of forward entry.
  final pulumi.Input<String> forwardEntryName;
  /// The ID of the Forward Entry.
  final pulumi.Input<String> id;
  /// The private IP address.
  final pulumi.Input<String> internalIp;
  /// The internal port.
  final pulumi.Input<String> internalPort;
  /// The ip protocol. Valid values: `any`,`tcp` and `udp`.
  final pulumi.Input<String> ipProtocol;
  /// The forward entry name.
  final pulumi.Input<String> name;
  /// The status of farward entry. Valid value `Available`, `Deleting` and `Pending`.
  final pulumi.Input<String> status;

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
      externalIp: (map['externalIp'] as String).input(),
      externalPort: (map['externalPort'] as String).input(),
      forwardEntryId: (map['forwardEntryId'] as String).input(),
      forwardEntryName: (map['forwardEntryName'] as String).input(),
      id: (map['id'] as String).input(),
      internalIp: (map['internalIp'] as String).input(),
      internalPort: (map['internalPort'] as String).input(),
      ipProtocol: (map['ipProtocol'] as String).input(),
      name: (map['name'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

