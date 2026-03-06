// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ascripts_ascript.dart';

/// Result data returned by getAscripts.
class GetAscriptsResult {
  /// Script name.
  final String? ascriptName;
  /// A list of AScript Entries. Each element contains the following attributes:
  final List<GetAscriptsAscript> ascripts;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of AScript IDs.
  final List<String> ids;
  /// Listener ID of script attribution.
  final String? listenerId;
  final String? nameRegex;
  /// A list of name of AScripts.
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetAscriptsResult].
  /// [ascriptName] Script name.
  /// [ascripts] A list of AScript Entries. Each element contains the following attributes:
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of AScript IDs.
  /// [listenerId] Listener ID of script attribution.
  /// [nameRegex] Optional.
  /// [names] A list of name of AScripts.
  /// [outputFile] Optional.
  const GetAscriptsResult({
    this.ascriptName,
    required this.ascripts,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.listenerId,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ascriptName': ?ascriptName,
      'ascripts': pulumi.Input.encodeList<GetAscriptsAscript, Map<String, dynamic>>(ascripts, (value) => value.toMap()),
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'listenerId': ?listenerId,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetAscriptsResult.fromMap(Map<String, dynamic> map) {
    return GetAscriptsResult(
      ascriptName: (() { final guardedValue = map['ascriptName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ascripts: pulumi.Input.decodeList<GetAscriptsAscript>(map['ascripts']!, (value) => GetAscriptsAscript.fromMap((value as Map).cast<String, dynamic>())),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      listenerId: (() { final guardedValue = map['listenerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

