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
    required String domainName,
    String? lang,
    String? outputFile,
    required String type,
  }) :
      domainName = pulumi.Input.asInput<String>(domainName),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      type = pulumi.Input.asInput<String>(type);

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
      domainName: map['domainName'] as String,
      lang: map['lang'] == null ? null : map['lang'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      type: map['type'] as String,
    );
  }
}

