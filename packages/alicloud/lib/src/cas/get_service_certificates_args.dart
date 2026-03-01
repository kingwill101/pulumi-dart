// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cas_get_service_certificates_get_service_certificates_args_doc}
/// Arguments for getServiceCertificates.
/// {@endtemplate}
/// {@macro pulumi_cas_get_service_certificates_get_service_certificates_args_doc}
class GetServiceCertificatesArgs {
  /// Whether to query the detailed list of resource attributes. Default value: `false`.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Ssl Certificates IDs.
  final pulumi.Input<List<String>>? ids;
  /// The domain name that is bound or the ID of the resource. Fuzzy match is supported.
  final pulumi.Input<String>? keyword;
  /// The language of the content within the request and response. **Note:** Field `lang` has been deprecated from provider version 1.232.0.
  final pulumi.Input<String>? lang;
  /// A regex string to filter results by Ssl Certificates name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetServiceCertificatesArgs].
  /// [enableDetails] Whether to query the detailed list of resource attributes. Default value: `false`.
  /// [ids] A list of Ssl Certificates IDs.
  /// [keyword] The domain name that is bound or the ID of the resource. Fuzzy match is supported.
  /// [lang] The language of the content within the request and response. **Note:** Field `lang` has been deprecated from provider version 1.232.0.
  /// [nameRegex] A regex string to filter results by Ssl Certificates name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetServiceCertificatesArgs({
    bool? enableDetails,
    List<String>? ids,
    String? keyword,
    String? lang,
    String? nameRegex,
    String? outputFile,
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

  factory GetServiceCertificatesArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceCertificatesArgs(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      keyword: map['keyword'] == null ? null : map['keyword'] as String,
      lang: map['lang'] == null ? null : map['lang'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

