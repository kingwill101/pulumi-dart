// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dcdn_get_waf_policies_get_waf_policies_args_doc}
/// Arguments for getWafPolicies.
/// {@endtemplate}
/// {@macro pulumi_dcdn_get_waf_policies_get_waf_policies_args_doc}
class GetWafPoliciesArgs {
  /// A list of Waf Policy IDs.
  final pulumi.Input<List<String>>? ids;
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The query conditions. The value is a string in the JSON format. Format: `{"PolicyIds":"The ID of the proteuleIds":"Thection policy","R range of protection rule IDs","PolicyNameLike":"The name of the protection policy","DomainNames":"The protected domain names","PolicyType":"default","DefenseScenes":"waf_group","PolicyStatus":"on","OrderBy":"GmtModified","Desc":"false"}`.
  final pulumi.Input<String>? queryArgs;
  /// The status of the resource. Valid values: `on`, `off`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetWafPoliciesArgs].
  /// [ids] A list of Waf Policy IDs.
  /// [nameRegex] Optional.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [queryArgs] The query conditions. The value is a string in the JSON format. Format: `{"PolicyIds":"The ID of the proteuleIds":"Thection policy","R range of protection rule IDs","PolicyNameLike":"The name of the protection policy","DomainNames":"The protected domain names","PolicyType":"default","DefenseScenes":"waf_group","PolicyStatus":"on","OrderBy":"GmtModified","Desc":"false"}`.
  /// [status] The status of the resource. Valid values: `on`, `off`.
  GetWafPoliciesArgs({
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    String? queryArgs,
    String? status,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      queryArgs = pulumi.Input.asOptionalInput<String>(queryArgs),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'queryArgs': ?queryArgs,
      'status': ?status,
    };
  }

  factory GetWafPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetWafPoliciesArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      queryArgs: map['queryArgs'] == null ? null : map['queryArgs'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

