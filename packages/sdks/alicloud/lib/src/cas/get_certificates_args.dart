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
    this.enableDetails,
    this.ids,
    this.keyword,
    this.lang,
    this.nameRegex,
    this.outputFile,
  });

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
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      keyword: map['keyword'] == null ? null : (map['keyword'] as String).input(),
      lang: map['lang'] == null ? null : (map['lang'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
    );
  }
}

