// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directmail_get_domains_get_domains_args_doc}
/// Arguments for getDomains.
/// {@endtemplate}
/// {@macro pulumi_directmail_get_domains_get_domains_args_doc}
class GetDomainsArgs {
  /// Whether to query the detailed list of resource attributes. Default value: `false`.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Domain IDs.
  final pulumi.Input<List<String>>? ids;
  /// The domain name. It must be 1 to 50 characters in length and can contain digits, letters, periods (.), and hyphens (-).
  final pulumi.Input<String>? keyWord;
  /// A regex string to filter results by Domain name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the domain name. Valid values:
  final pulumi.Input<String>? status;

  /// Creates a new [GetDomainsArgs].
  /// [enableDetails] Whether to query the detailed list of resource attributes. Default value: `false`.
  /// [ids] A list of Domain IDs.
  /// [keyWord] The domain name. It must be 1 to 50 characters in length and can contain digits, letters, periods (.), and hyphens (-).
  /// [nameRegex] A regex string to filter results by Domain name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the domain name. Valid values:
  GetDomainsArgs({
    bool? enableDetails,
    List<String>? ids,
    String? keyWord,
    String? nameRegex,
    String? outputFile,
    String? status,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      keyWord = pulumi.Input.asOptionalInput<String>(keyWord),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'keyWord': ?keyWord,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetDomainsArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainsArgs(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      keyWord: map['keyWord'] == null ? null : map['keyWord'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

