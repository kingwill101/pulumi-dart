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
    this.domainName,
    this.lang,
    this.lineCodes,
    this.lineDisplayNames,
    this.lineNames,
    this.outputFile,
    this.userClientIp,
  });

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
      domainName: (() {
        final guardedValue = map['domainName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lang: (() {
        final guardedValue = map['lang'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lineCodes: (() {
        final guardedValue = map['lineCodes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      lineDisplayNames: (() {
        final guardedValue = map['lineDisplayNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      lineNames: (() {
        final guardedValue = map['lineNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userClientIp: (() {
        final guardedValue = map['userClientIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
