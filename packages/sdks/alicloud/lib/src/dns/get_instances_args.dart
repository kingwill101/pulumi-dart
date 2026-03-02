// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_instances_get_instances_args_doc}
/// Arguments for getInstances.
/// {@endtemplate}
/// {@macro pulumi_dns_get_instances_get_instances_args_doc}
class GetInstancesArgs {
  final pulumi.Input<String>? domainType;
  /// A list of instance IDs.
  final pulumi.Input<List<String>>? ids;
  final pulumi.Input<String>? lang;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<String>? userClientIp;

  /// Creates a new [GetInstancesArgs].
  /// [domainType] Optional.
  /// [ids] A list of instance IDs.
  /// [lang] Optional.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [userClientIp] Optional.
  GetInstancesArgs({
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

  factory GetInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstancesArgs(
      domainType: map['domainType'] == null ? null : (map['domainType'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      lang: map['lang'] == null ? null : (map['lang'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      userClientIp: map['userClientIp'] == null ? null : (map['userClientIp'] as String).input(),
    );
  }
}

