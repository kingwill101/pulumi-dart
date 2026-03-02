// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_yundun_get_bastion_host_instances_get_bastion_host_instances_args_doc}
/// Arguments for getBastionHostInstances.
/// {@endtemplate}
/// {@macro pulumi_yundun_get_bastion_host_instances_get_bastion_host_instances_args_doc}
class GetBastionHostInstancesArgs {
  final pulumi.Input<String>? descriptionRegex;
  final pulumi.Input<List<String>>? ids;
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetBastionHostInstancesArgs].
  /// [descriptionRegex] Optional.
  /// [ids] Optional.
  /// [outputFile] Optional.
  /// [tags] Optional.
  GetBastionHostInstancesArgs({
    this.descriptionRegex,
    this.ids,
    this.outputFile,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'descriptionRegex': ?descriptionRegex,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'tags': ?tags,
    };
  }

  factory GetBastionHostInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetBastionHostInstancesArgs(
      descriptionRegex: map['descriptionRegex'] == null ? null : (map['descriptionRegex'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

