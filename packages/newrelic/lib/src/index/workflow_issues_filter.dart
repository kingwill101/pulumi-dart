// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_issues_filter_predicate.dart';

class WorkflowIssuesFilter {
  /// filter id.
  final String? filterId;
  /// The name of the filter. The name only serves a cosmetic purpose and can only be seen through Terraform and GraphQL API. It can't be empty.
  final String name;
  /// A condition an issue event should satisfy to be processed by the workflow
  final List<WorkflowIssuesFilterPredicate>? predicates;
  /// Type of the filter. Please just set this field to `FILTER`. The field is likely to be deprecated/removed in the near future.
  final String type;

  /// Creates a new [WorkflowIssuesFilter].
  /// [filterId] filter id.
  /// [name] The name of the filter. The name only serves a cosmetic purpose and can only be seen through Terraform and GraphQL API. It can't be empty.
  /// [predicates] A condition an issue event should satisfy to be processed by the workflow
  /// [type] Type of the filter. Please just set this field to `FILTER`. The field is likely to be deprecated/removed in the near future.
  WorkflowIssuesFilter({
    this.filterId,
    required this.name,
    this.predicates,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterId': ?filterId,
      'name': name,
      'predicates': ?predicates == null ? null : pulumi.Input.encodeList<WorkflowIssuesFilterPredicate, Map<String, dynamic>>(predicates!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory WorkflowIssuesFilter.fromMap(Map<String, dynamic> map) {
    return WorkflowIssuesFilter(
      filterId: map['filterId'] == null ? null : map['filterId'] as String,
      name: map['name'] as String,
      predicates: map['predicates'] == null ? null : pulumi.Input.decodeList<WorkflowIssuesFilterPredicate>(map['predicates'], (value) => WorkflowIssuesFilterPredicate.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

