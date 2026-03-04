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
  GetRulesArgs({this.endpointId, this.ids, this.nameRegex, this.outputFile});

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
      endpointId: (() {
        final guardedValue = map['endpointId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
