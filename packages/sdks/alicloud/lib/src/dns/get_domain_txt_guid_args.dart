// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_domain_txt_guid_get_domain_txt_guid_args_doc}
/// Arguments for getDomainTxtGuid.
/// {@endtemplate}
/// {@macro pulumi_dns_get_domain_txt_guid_get_domain_txt_guid_args_doc}
class GetDomainTxtGuidArgs {
  /// Verified domain name.
  final pulumi.Input<String> domainName;

  /// User language.
  final pulumi.Input<String>? lang;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Txt verification function. Value:`ADD_SUB_DOMAIN`, `RETRIEVAL`.
  final pulumi.Input<String> type;

  /// Creates a new [GetDomainTxtGuidArgs].
  /// [domainName] Verified domain name.
  /// [lang] User language.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [type] Txt verification function. Value:`ADD_SUB_DOMAIN`, `RETRIEVAL`.
  GetDomainTxtGuidArgs({
    required this.domainName,
    this.lang,
    this.outputFile,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'lang': ?lang,
      'outputFile': ?outputFile,
      'type': type,
    };
  }

  factory GetDomainTxtGuidArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainTxtGuidArgs(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      lang: (() {
        final guardedValue = map['lang'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
