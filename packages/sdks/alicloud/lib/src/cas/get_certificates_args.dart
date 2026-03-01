// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cas_get_certificates_get_certificates_args_doc}
/// Arguments for getCertificates.
/// {@endtemplate}
/// {@macro pulumi_cas_get_certificates_get_certificates_args_doc}
class GetCertificatesArgs {
  final pulumi.Input<bool>? enableDetails;
  /// A list of cert IDs.
  final pulumi.Input<List<String>>? ids;
  final pulumi.Input<String>? keyword;
  final pulumi.Input<String>? lang;
  /// A regex string to filter results by the certificate name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetCertificatesArgs].
  /// [enableDetails] Optional.
  /// [ids] A list of cert IDs.
  /// [keyword] Optional.
  /// [lang] Optional.
  /// [nameRegex] A regex string to filter results by the certificate name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetCertificatesArgs({
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? keyword,
    pulumi.Output<String>? lang,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      keyword = pulumi.Input.asOptionalInput<String>(keyword),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'keyword': ?keyword,
      'lang': ?lang,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetCertificatesArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificatesArgs(
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      keyword: map['keyword'] == null ? null : pulumi.Output.create<String>(map['keyword'] as String),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

