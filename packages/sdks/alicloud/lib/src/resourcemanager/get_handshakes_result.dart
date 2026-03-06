// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_handshakes_handshake.dart';

/// Result data returned by getHandshakes.
class GetHandshakesResult {
  final bool? enableDetails;
  /// A list of Resource Manager Handshakes. Each element contains the following attributes:
  final List<GetHandshakesHandshake> handshakes;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Resource Manager Handshake IDs.
  final List<String> ids;
  final String? outputFile;
  /// The status of the invitation.
  final String? status;

  /// Creates a new [GetHandshakesResult].
  /// [enableDetails] Optional.
  /// [handshakes] A list of Resource Manager Handshakes. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Resource Manager Handshake IDs.
  /// [outputFile] Optional.
  /// [status] The status of the invitation.
  const GetHandshakesResult({
    this.enableDetails,
    required this.handshakes,
    required this.id,
    required this.ids,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'handshakes': pulumi.Input.encodeList<GetHandshakesHandshake, Map<String, dynamic>>(handshakes, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetHandshakesResult.fromMap(Map<String, dynamic> map) {
    return GetHandshakesResult(
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      handshakes: pulumi.Input.decodeList<GetHandshakesHandshake>(map['handshakes']!, (value) => GetHandshakesHandshake.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

