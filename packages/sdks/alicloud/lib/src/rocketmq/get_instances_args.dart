// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rocketmq_get_instances_get_instances_args_doc}
/// Arguments for getInstances.
/// {@endtemplate}
/// {@macro pulumi_rocketmq_get_instances_get_instances_args_doc}
class GetInstancesArgs {
  /// Default to `false`. Set it to true can output more details.
  final pulumi.Input<bool>? enableDetails;
  /// A list of instance IDs to filter results.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by the instance name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of Ons instance. Valid values: `0` deploying, `2` arrears, `5` running, `7` upgrading.
  final pulumi.Input<int>? status;
  /// A map of tags assigned to the Ons instance.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetInstancesArgs].
  /// [enableDetails] Default to `false`. Set it to true can output more details.
  /// [ids] A list of instance IDs to filter results.
  /// [nameRegex] A regex string to filter results by the instance name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of Ons instance. Valid values: `0` deploying, `2` arrears, `5` running, `7` upgrading.
  /// [tags] A map of tags assigned to the Ons instance.
  GetInstancesArgs({
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<int>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstancesArgs(
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<int>(map['status'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

