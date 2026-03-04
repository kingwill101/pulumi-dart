// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_metric_rule_black_lists_list.dart';

/// Result data returned by getMetricRuleBlackLists.
class GetMetricRuleBlackListsResult {
  /// Cloud service classification. For example, Redis includes kvstore_standard, kvstore_sharding, and kvstore_splitrw.
  final String? category;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of Metric Rule Black List IDs.
  final List<String> ids;

  /// A list of Metric Rule Black List Entries. Each element contains the following attributes:
  final List<GetMetricRuleBlackListsList> lists;

  /// The first ID of the resource
  final String? metricRuleBlackListId;
  final String? nameRegex;

  /// A list of name of Metric Rule Black Lists.
  final List<String> names;

  /// The data namespace of the cloud service.
  final String? namespace;
  final int? order;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;

  /// Creates a new [GetMetricRuleBlackListsResult].
  /// [category] Cloud service classification. For example, Redis includes kvstore_standard, kvstore_sharding, and kvstore_splitrw.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Metric Rule Black List IDs.
  /// [lists] A list of Metric Rule Black List Entries. Each element contains the following attributes:
  /// [metricRuleBlackListId] The first ID of the resource
  /// [nameRegex] Optional.
  /// [names] A list of name of Metric Rule Black Lists.
  /// [namespace] The data namespace of the cloud service.
  /// [order] Optional.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetMetricRuleBlackListsResult({
    this.category,
    required this.id,
    required this.ids,
    required this.lists,
    this.metricRuleBlackListId,
    this.nameRegex,
    required this.names,
    this.namespace,
    this.order,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'id': id,
      'ids': ids,
      'lists':
          pulumi.Input.encodeList<
            GetMetricRuleBlackListsList,
            Map<String, dynamic>
          >(lists, (value) => value.toMap()),
      'metricRuleBlackListId': ?metricRuleBlackListId,
      'nameRegex': ?nameRegex,
      'names': names,
      'namespace': ?namespace,
      'order': ?order,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetMetricRuleBlackListsResult.fromMap(Map<String, dynamic> map) {
    return GetMetricRuleBlackListsResult(
      category: (() {
        final guardedValue = map['category'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      lists: pulumi.Input.decodeList<GetMetricRuleBlackListsList>(
        map['lists']!,
        (value) => GetMetricRuleBlackListsList.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      metricRuleBlackListId: (() {
        final guardedValue = map['metricRuleBlackListId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      namespace: (() {
        final guardedValue = map['namespace'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      order: (() {
        final guardedValue = map['order'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      pageNumber: (() {
        final guardedValue = map['pageNumber'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      pageSize: (() {
        final guardedValue = map['pageSize'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
    );
  }
}
