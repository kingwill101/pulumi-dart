// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_drds_get_instances_get_instances_args_doc}
/// Arguments for getInstances.
/// {@endtemplate}
/// {@macro pulumi_drds_get_instances_get_instances_args_doc}
class GetInstancesArgs {
  /// A regex string to filter results by instance description.
  final pulumi.Input<String>? descriptionRegex;
  /// A list of DRDS instance IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by instance description. It is deprecated since v1.91.0 and will be removed in a future release, please use 'description_regex' instead.
  final pulumi.Input<String>? nameRegex;
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetInstancesArgs].
  /// [descriptionRegex] A regex string to filter results by instance description.
  /// [ids] A list of DRDS instance IDs.
  /// [nameRegex] A regex string to filter results by instance description. It is deprecated since v1.91.0 and will be removed in a future release, please use 'description_regex' instead.
  /// [outputFile] Optional.
  GetInstancesArgs({
    pulumi.Output<String>? descriptionRegex,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
  }) :
      descriptionRegex = pulumi.Input.asOptionalInput<String>(descriptionRegex),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'descriptionRegex': ?descriptionRegex,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstancesArgs(
      descriptionRegex: map['descriptionRegex'] == null ? null : pulumi.Output.create<String>(map['descriptionRegex'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

