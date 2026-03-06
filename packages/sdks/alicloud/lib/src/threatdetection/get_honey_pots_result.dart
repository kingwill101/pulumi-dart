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
  const GetHoneyPotsResult({
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
      honeypotId: (() { final guardedValue = map['honeypotId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      honeypotName: (() { final guardedValue = map['honeypotName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeId: (() { final guardedValue = map['nodeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeName: (() { final guardedValue = map['nodeName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pots: pulumi.Input.decodeList<GetHoneyPotsPot>(map['pots']!, (value) => GetHoneyPotsPot.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

