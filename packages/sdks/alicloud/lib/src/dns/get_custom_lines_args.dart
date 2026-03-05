// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_custom_lines_get_custom_lines_args_doc}
/// Arguments for getCustomLines.
/// {@endtemplate}
/// {@macro pulumi_dns_get_custom_lines_get_custom_lines_args_doc}
class GetCustomLinesArgs {
  /// The Domain name.
  final pulumi.Input<String> domainName;
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Custom Line IDs.
  final pulumi.Input<List<String>>? ids;
  /// The lang.
  final pulumi.Input<String>? lang;
  /// A regex string to filter results by Custom Line name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetCustomLinesArgs].
  /// [domainName] The Domain name.
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Custom Line IDs.
  /// [lang] The lang.
  /// [nameRegex] A regex string to filter results by Custom Line name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetCustomLinesArgs({
    required this.domainName,
    this.enableDetails,
    this.ids,
    this.lang,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'lang': ?lang,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetCustomLinesArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomLinesArgs(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

