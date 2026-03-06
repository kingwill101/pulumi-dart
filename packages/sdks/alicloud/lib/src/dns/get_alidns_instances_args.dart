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
  const GetAlidnsInstancesArgs({
    this.domainType,
    this.ids,
    this.lang,
    this.outputFile,
    this.userClientIp,
  });

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
      domainType: (() { final guardedValue = map['domainType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userClientIp: (() { final guardedValue = map['userClientIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

