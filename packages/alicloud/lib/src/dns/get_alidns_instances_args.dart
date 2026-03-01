// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_alidns_instances_get_alidns_instances_args_doc}
/// Arguments for getAlidnsInstances.
/// {@endtemplate}
/// {@macro pulumi_dns_get_alidns_instances_get_alidns_instances_args_doc}
class GetAlidnsInstancesArgs {
  /// The type of domain.
  final pulumi.Input<String>? domainType;
  /// A list of instance IDs.
  final pulumi.Input<List<String>>? ids;
  /// Language.
  final pulumi.Input<String>? lang;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The IP address of the client.
  final pulumi.Input<String>? userClientIp;

  /// Creates a new [GetAlidnsInstancesArgs].
  /// [domainType] The type of domain.
  /// [ids] A list of instance IDs.
  /// [lang] Language.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [userClientIp] The IP address of the client.
  GetAlidnsInstancesArgs({
    String? domainType,
    List<String>? ids,
    String? lang,
    String? outputFile,
    String? userClientIp,
  }) :
      domainType = pulumi.Input.asOptionalInput<String>(domainType),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      userClientIp = pulumi.Input.asOptionalInput<String>(userClientIp);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainType': ?domainType,
      'ids': ?ids,
      'lang': ?lang,
      'outputFile': ?outputFile,
      'userClientIp': ?userClientIp,
    };
  }

  factory GetAlidnsInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetAlidnsInstancesArgs(
      domainType: map['domainType'] == null ? null : map['domainType'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      lang: map['lang'] == null ? null : map['lang'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      userClientIp: map['userClientIp'] == null ? null : map['userClientIp'] as String,
    );
  }
}

