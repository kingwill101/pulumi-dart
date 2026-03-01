// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_list_local_rulestack_predefined_url_categories_args_doc}
/// Arguments for listLocalRulestackPredefinedUrlCategories.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_list_local_rulestack_predefined_url_categories_args_doc}
class ListLocalRulestackPredefinedUrlCategoriesArgs {
  /// LocalRulestack resource name
  final pulumi.Input<String> localRulestackName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<String>? skip;
  final pulumi.Input<int>? top;

  /// Creates a new [ListLocalRulestackPredefinedUrlCategoriesArgs].
  /// [localRulestackName] LocalRulestack resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [skip] Optional.
  /// [top] Optional.
  ListLocalRulestackPredefinedUrlCategoriesArgs({
    required String localRulestackName,
    required String resourceGroupName,
    String? skip,
    int? top,
  }) :
      localRulestackName = pulumi.Input.asInput<String>(localRulestackName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      skip = pulumi.Input.asOptionalInput<String>(skip),
      top = pulumi.Input.asOptionalInput<int>(top);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localRulestackName': localRulestackName,
      'resourceGroupName': resourceGroupName,
      'skip': ?skip,
      'top': ?top,
    };
  }

  factory ListLocalRulestackPredefinedUrlCategoriesArgs.fromMap(Map<String, dynamic> map) {
    return ListLocalRulestackPredefinedUrlCategoriesArgs(
      localRulestackName: map['localRulestackName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      skip: map['skip'] == null ? null : map['skip'] as String,
      top: map['top'] == null ? null : map['top'] as int,
    );
  }
}

