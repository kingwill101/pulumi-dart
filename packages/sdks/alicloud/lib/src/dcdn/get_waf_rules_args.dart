// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dcdn_get_waf_rules_get_waf_rules_args_doc}
/// Arguments for getWafRules.
/// {@endtemplate}
/// {@macro pulumi_dcdn_get_waf_rules_get_waf_rules_args_doc}
class GetWafRulesArgs {
  /// A list of Waf Rule IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The query conditions. The value is a string in the JSON format.
  final pulumi.Input<String>? queryArgs;

  /// Creates a new [GetWafRulesArgs].
  /// [ids] A list of Waf Rule IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [queryArgs] The query conditions. The value is a string in the JSON format.
  GetWafRulesArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
    pulumi.Output<String>? queryArgs,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      queryArgs = pulumi.Input.asOptionalInput<String>(queryArgs);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'queryArgs': ?queryArgs,
    };
  }

  factory GetWafRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetWafRulesArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
      queryArgs: map['queryArgs'] == null ? null : pulumi.Output.create<String>(map['queryArgs'] as String),
    );
  }
}

