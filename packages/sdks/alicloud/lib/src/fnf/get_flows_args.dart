// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fnf_get_flows_get_flows_args_doc}
/// Arguments for getFlows.
/// {@endtemplate}
/// {@macro pulumi_fnf_get_flows_get_flows_args_doc}
class GetFlowsArgs {
  /// A list of Flow IDs.
  final pulumi.Input<List<String>>? ids;
  /// The number of resource queries.
  final pulumi.Input<int>? limit;
  /// A regex string to filter results by Flow name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetFlowsArgs].
  /// [ids] A list of Flow IDs.
  /// [limit] The number of resource queries.
  /// [nameRegex] A regex string to filter results by Flow name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetFlowsArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<int>? limit,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      limit = pulumi.Input.asOptionalInput<int>(limit),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'limit': ?limit,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetFlowsArgs.fromMap(Map<String, dynamic> map) {
    return GetFlowsArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      limit: map['limit'] == null ? null : pulumi.Output.create<int>(map['limit'] as int),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

