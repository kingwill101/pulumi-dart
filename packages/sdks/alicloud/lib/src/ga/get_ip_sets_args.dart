// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_get_ip_sets_get_ip_sets_args_doc}
/// Arguments for getIpSets.
/// {@endtemplate}
/// {@macro pulumi_ga_get_ip_sets_get_ip_sets_args_doc}
class GetIpSetsArgs {
  /// The ID of the Global Accelerator (GA) instance.
  final pulumi.Input<String> acceleratorId;
  /// A list of Ip Set IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the acceleration region. Valid values: `active`, `deleting`, `init`, `updating`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetIpSetsArgs].
  /// [acceleratorId] The ID of the Global Accelerator (GA) instance.
  /// [ids] A list of Ip Set IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the acceleration region. Valid values: `active`, `deleting`, `init`, `updating`.
  GetIpSetsArgs({
    required pulumi.Output<String> acceleratorId,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
  }) :
      acceleratorId = pulumi.Input.asInput<String>(acceleratorId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetIpSetsArgs.fromMap(Map<String, dynamic> map) {
    return GetIpSetsArgs(
      acceleratorId: pulumi.Output.create<String>(map['acceleratorId'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

