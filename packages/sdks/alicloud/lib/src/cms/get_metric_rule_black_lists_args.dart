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
    this.category,
    this.ids,
    this.metricRuleBlackListId,
    this.nameRegex,
    this.namespace,
    this.order,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
  });

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
      category: map['category'] == null ? null : (map['category']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      metricRuleBlackListId: map['metricRuleBlackListId'] == null ? null : (map['metricRuleBlackListId']! as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace']! as String).input(),
      order: map['order'] == null ? null : (map['order']! as int).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber']! as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize']! as int).input(),
    );
  }
}

