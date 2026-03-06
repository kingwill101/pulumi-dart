// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_lines_line.dart';

/// Result data returned by getCustomLines.
class GetCustomLinesResult {
  final String domainName;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? lang;
  final List<GetCustomLinesLine> lines;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetCustomLinesResult].
  /// [domainName] Required.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [lang] Optional.
  /// [lines] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  const GetCustomLinesResult({
    required this.domainName,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.lang,
    required this.lines,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'lang': ?lang,
      'lines': pulumi.Input.encodeList<GetCustomLinesLine, Map<String, dynamic>>(lines, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetCustomLinesResult.fromMap(Map<String, dynamic> map) {
    return GetCustomLinesResult(
      domainName: map['domainName'] as String,
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lines: pulumi.Input.decodeList<GetCustomLinesLine>(map['lines']!, (value) => GetCustomLinesLine.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

