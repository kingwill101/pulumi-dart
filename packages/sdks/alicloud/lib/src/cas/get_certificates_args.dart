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
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      keyword: (() {
        final guardedValue = map['keyword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lang: (() {
        final guardedValue = map['lang'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
