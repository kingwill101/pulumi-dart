// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cms_get_metric_rule_black_lists_get_metric_rule_black_lists_args_doc}
/// Arguments for getMetricRuleBlackLists.
/// {@endtemplate}
/// {@macro pulumi_cms_get_metric_rule_black_lists_get_metric_rule_black_lists_args_doc}
class GetMetricRuleBlackListsArgs {
  /// Cloud service classification. For example, Redis includes kvstore_standard, kvstore_sharding, and kvstore_splitrw.
  final pulumi.Input<String>? category;
  /// A list of Metric Rule Black List IDs.
  final pulumi.Input<List<String>>? ids;
  /// The first ID of the resource
  final pulumi.Input<String>? metricRuleBlackListId;
  /// A regex string to filter results by Group Metric Rule name.
  final pulumi.Input<String>? nameRegex;
  /// The data namespace of the cloud service.
  final pulumi.Input<String>? namespace;
  final pulumi.Input<int>? order;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;

  /// Creates a new [GetMetricRuleBlackListsArgs].
  /// [category] Cloud service classification. For example, Redis includes kvstore_standard, kvstore_sharding, and kvstore_splitrw.
  /// [ids] A list of Metric Rule Black List IDs.
  /// [metricRuleBlackListId] The first ID of the resource
  /// [nameRegex] A regex string to filter results by Group Metric Rule name.
  /// [namespace] The data namespace of the cloud service.
  /// [order] Optional.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetMetricRuleBlackListsArgs({
    pulumi.Output<String>? category,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? metricRuleBlackListId,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? namespace,
    pulumi.Output<int>? order,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
  }) :
      category = pulumi.Input.asOptionalInput<String>(category),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      metricRuleBlackListId = pulumi.Input.asOptionalInput<String>(metricRuleBlackListId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      order = pulumi.Input.asOptionalInput<int>(order),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'ids': ?ids,
      'metricRuleBlackListId': ?metricRuleBlackListId,
      'nameRegex': ?nameRegex,
      'namespace': ?namespace,
      'order': ?order,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetMetricRuleBlackListsArgs.fromMap(Map<String, dynamic> map) {
    return GetMetricRuleBlackListsArgs(
      category: map['category'] == null ? null : pulumi.Output.create<String>(map['category'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      metricRuleBlackListId: map['metricRuleBlackListId'] == null ? null : pulumi.Output.create<String>(map['metricRuleBlackListId'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      namespace: map['namespace'] == null ? null : pulumi.Output.create<String>(map['namespace'] as String),
      order: map['order'] == null ? null : pulumi.Output.create<int>(map['order'] as int),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
    );
  }
}

