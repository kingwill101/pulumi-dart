// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pvtz_get_rules_get_rules_args_doc}
/// Arguments for getRules.
/// {@endtemplate}
/// {@macro pulumi_pvtz_get_rules_get_rules_args_doc}
class GetRulesArgs {
  /// The ID of the Endpoint.
  final pulumi.Input<String>? endpointId;
  /// A list of Rule IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Rule name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetRulesArgs].
  /// [endpointId] The ID of the Endpoint.
  /// [ids] A list of Rule IDs.
  /// [nameRegex] A regex string to filter results by Rule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetRulesArgs({
    pulumi.Output<String>? endpointId,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
  }) :
      endpointId = pulumi.Input.asOptionalInput<String>(endpointId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointId': ?endpointId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetRulesArgs(
      endpointId: map['endpointId'] == null ? null : pulumi.Output.create<String>(map['endpointId'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

