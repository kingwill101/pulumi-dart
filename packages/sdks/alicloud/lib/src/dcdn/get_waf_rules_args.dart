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
    this.ids,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.queryArgs,
  });

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
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      queryArgs: (() { final guardedValue = map['queryArgs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

