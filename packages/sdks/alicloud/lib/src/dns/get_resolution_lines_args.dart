// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_resolution_lines_get_resolution_lines_args_doc}
/// Arguments for getResolutionLines.
/// {@endtemplate}
/// {@macro pulumi_dns_get_resolution_lines_get_resolution_lines_args_doc}
class GetResolutionLinesArgs {
  /// Domain Name.
  final pulumi.Input<String>? domainName;
  /// language.
  final pulumi.Input<String>? lang;
  /// A list of lines codes.
  final pulumi.Input<List<String>>? lineCodes;
  /// A list of line display names.
  final pulumi.Input<List<String>>? lineDisplayNames;
  final pulumi.Input<List<String>>? lineNames;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ip of user client.
  final pulumi.Input<String>? userClientIp;

  /// Creates a new [GetResolutionLinesArgs].
  /// [domainName] Domain Name.
  /// [lang] language.
  /// [lineCodes] A list of lines codes.
  /// [lineDisplayNames] A list of line display names.
  /// [lineNames] Optional.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [userClientIp] The ip of user client.
  GetResolutionLinesArgs({
    pulumi.Output<String>? domainName,
    pulumi.Output<String>? lang,
    pulumi.Output<List<String>>? lineCodes,
    pulumi.Output<List<String>>? lineDisplayNames,
    pulumi.Output<List<String>>? lineNames,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? userClientIp,
  }) :
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      lineCodes = pulumi.Input.asOptionalInput<List<String>>(lineCodes),
      lineDisplayNames = pulumi.Input.asOptionalInput<List<String>>(lineDisplayNames),
      lineNames = pulumi.Input.asOptionalInput<List<String>>(lineNames),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      userClientIp = pulumi.Input.asOptionalInput<String>(userClientIp);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'lang': ?lang,
      'lineCodes': ?lineCodes,
      'lineDisplayNames': ?lineDisplayNames,
      'lineNames': ?lineNames,
      'outputFile': ?outputFile,
      'userClientIp': ?userClientIp,
    };
  }

  factory GetResolutionLinesArgs.fromMap(Map<String, dynamic> map) {
    return GetResolutionLinesArgs(
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      lineCodes: map['lineCodes'] == null ? null : pulumi.Output.create<List<String>>((map['lineCodes'] as List).cast<String>()),
      lineDisplayNames: map['lineDisplayNames'] == null ? null : pulumi.Output.create<List<String>>((map['lineDisplayNames'] as List).cast<String>()),
      lineNames: map['lineNames'] == null ? null : pulumi.Output.create<List<String>>((map['lineNames'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      userClientIp: map['userClientIp'] == null ? null : pulumi.Output.create<String>(map['userClientIp'] as String),
    );
  }
}

