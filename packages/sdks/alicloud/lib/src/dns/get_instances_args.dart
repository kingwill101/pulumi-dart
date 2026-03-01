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
    pulumi.Output<String>? domainType,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? lang,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? userClientIp,
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

  factory GetInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstancesArgs(
      domainType: map['domainType'] == null ? null : pulumi.Output.create<String>(map['domainType'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      userClientIp: map['userClientIp'] == null ? null : pulumi.Output.create<String>(map['userClientIp'] as String),
    );
  }
}

