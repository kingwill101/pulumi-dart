// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resolution_lines_line.dart';

/// Result data returned by getResolutionLines.
class GetResolutionLinesResult {
  final String? domainName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? lang;
  /// Line code.
  final List<String> lineCodes;
  /// A list of line display names.
  final List<String> lineDisplayNames;
  final List<String>? lineNames;
  /// A list of cloud resolution line. Each element contains the following attributes:
  final List<GetResolutionLinesLine> lines;
  final String? outputFile;
  final String? userClientIp;

  /// Creates a new [GetResolutionLinesResult].
  /// [domainName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lang] Optional.
  /// [lineCodes] Line code.
  /// [lineDisplayNames] A list of line display names.
  /// [lineNames] Optional.
  /// [lines] A list of cloud resolution line. Each element contains the following attributes:
  /// [outputFile] Optional.
  /// [userClientIp] Optional.
  GetResolutionLinesResult({
    this.domainName,
    required this.id,
    this.lang,
    required this.lineCodes,
    required this.lineDisplayNames,
    this.lineNames,
    required this.lines,
    this.outputFile,
    this.userClientIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'id': id,
      'lang': ?lang,
      'lineCodes': lineCodes,
      'lineDisplayNames': lineDisplayNames,
      'lineNames': ?lineNames,
      'lines': pulumi.Input.encodeList<GetResolutionLinesLine, Map<String, dynamic>>(lines, (value) => value.toMap()),
      'outputFile': ?outputFile,
      'userClientIp': ?userClientIp,
    };
  }

  factory GetResolutionLinesResult.fromMap(Map<String, dynamic> map) {
    return GetResolutionLinesResult(
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lineCodes: (map['lineCodes'] as List).cast<String>(),
      lineDisplayNames: (map['lineDisplayNames'] as List).cast<String>(),
      lineNames: (() { final guardedValue = map['lineNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      lines: pulumi.Input.decodeList<GetResolutionLinesLine>(map['lines']!, (value) => GetResolutionLinesLine.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userClientIp: (() { final guardedValue = map['userClientIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

