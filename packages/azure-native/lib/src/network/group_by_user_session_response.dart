// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_by_variable_response.dart';

/// Define user session identifier group by clauses.
class GroupByUserSessionResponse {
  /// List of group by clause variables.
  final List<GroupByVariableResponse> groupByVariables;

  /// Creates a new [GroupByUserSessionResponse].
  /// [groupByVariables] List of group by clause variables.
  GroupByUserSessionResponse({
    required this.groupByVariables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupByVariables': pulumi.Input.encodeList<GroupByVariableResponse, Map<String, dynamic>>(groupByVariables, (value) => value.toMap()),
    };
  }

  factory GroupByUserSessionResponse.fromMap(Map<String, dynamic> map) {
    return GroupByUserSessionResponse(
      groupByVariables: pulumi.Input.decodeList<GroupByVariableResponse>(map['groupByVariables'], (value) => GroupByVariableResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

