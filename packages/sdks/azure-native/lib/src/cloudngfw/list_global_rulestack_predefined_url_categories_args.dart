// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_list_global_rulestack_predefined_url_categories_args_doc}
/// Arguments for listGlobalRulestackPredefinedUrlCategories.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_list_global_rulestack_predefined_url_categories_args_doc}
class ListGlobalRulestackPredefinedUrlCategoriesArgs {
  /// GlobalRulestack resource name
  final pulumi.Input<String> globalRulestackName;
  final pulumi.Input<String>? skip;
  final pulumi.Input<int>? top;

  /// Creates a new [ListGlobalRulestackPredefinedUrlCategoriesArgs].
  /// [globalRulestackName] GlobalRulestack resource name
  /// [skip] Optional.
  /// [top] Optional.
  ListGlobalRulestackPredefinedUrlCategoriesArgs({
    required pulumi.Output<String> globalRulestackName,
    pulumi.Output<String>? skip,
    pulumi.Output<int>? top,
  }) :
      globalRulestackName = pulumi.Input.asInput<String>(globalRulestackName),
      skip = pulumi.Input.asOptionalInput<String>(skip),
      top = pulumi.Input.asOptionalInput<int>(top);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalRulestackName': globalRulestackName,
      'skip': ?skip,
      'top': ?top,
    };
  }

  factory ListGlobalRulestackPredefinedUrlCategoriesArgs.fromMap(Map<String, dynamic> map) {
    return ListGlobalRulestackPredefinedUrlCategoriesArgs(
      globalRulestackName: pulumi.Output.create<String>(map['globalRulestackName'] as String),
      skip: map['skip'] == null ? null : pulumi.Output.create<String>(map['skip'] as String),
      top: map['top'] == null ? null : pulumi.Output.create<int>(map['top'] as int),
    );
  }
}

