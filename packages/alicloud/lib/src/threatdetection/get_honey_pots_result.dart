// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_honey_pots_pot.dart';

/// Result data returned by getHoneyPots.
class GetHoneyPotsResult {
  /// Honeypot ID.
  final String? honeypotId;
  /// Honeypot custom name.
  final String? honeypotName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Honey Pot IDs.
  final List<String> ids;
  final String? nameRegex;
  /// The ID of the honeypot management node.
  final String? nodeId;
  final String? nodeName;
  final String? outputFile;
  /// A list of Honey Pot Entries. Each element contains the following attributes:
  final List<GetHoneyPotsPot> pots;

  /// Creates a new [GetHoneyPotsResult].
  /// [honeypotId] Honeypot ID.
  /// [honeypotName] Honeypot custom name.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Honey Pot IDs.
  /// [nameRegex] Optional.
  /// [nodeId] The ID of the honeypot management node.
  /// [nodeName] Optional.
  /// [outputFile] Optional.
  /// [pots] A list of Honey Pot Entries. Each element contains the following attributes:
  GetHoneyPotsResult({
    this.honeypotId,
    this.honeypotName,
    required this.id,
    required this.ids,
    this.nameRegex,
    this.nodeId,
    this.nodeName,
    this.outputFile,
    required this.pots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'honeypotId': ?honeypotId,
      'honeypotName': ?honeypotName,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'nodeId': ?nodeId,
      'nodeName': ?nodeName,
      'outputFile': ?outputFile,
      'pots': pulumi.Input.encodeList<GetHoneyPotsPot, Map<String, dynamic>>(pots, (value) => value.toMap()),
    };
  }

  factory GetHoneyPotsResult.fromMap(Map<String, dynamic> map) {
    return GetHoneyPotsResult(
      honeypotId: map['honeypotId'] == null ? null : map['honeypotId'] as String,
      honeypotName: map['honeypotName'] == null ? null : map['honeypotName'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      nodeId: map['nodeId'] == null ? null : map['nodeId'] as String,
      nodeName: map['nodeName'] == null ? null : map['nodeName'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pots: pulumi.Input.decodeList<GetHoneyPotsPot>(map['pots'], (value) => GetHoneyPotsPot.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

