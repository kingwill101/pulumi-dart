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
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      metricRuleBlackListId: (() { final guardedValue = map['metricRuleBlackListId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

