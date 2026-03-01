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
    required pulumi.Output<String> domainName,
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? lang,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
  }) :
      domainName = pulumi.Input.asInput<String>(domainName),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

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
      domainName: pulumi.Output.create<String>(map['domainName'] as String),
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

