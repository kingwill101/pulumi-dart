// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_agent_versions_filter.dart';
import 'get_genai_agent_versions_sort.dart';

/// {@template pulumi_index_get_genai_agent_versions_get_genai_agent_versions_args_doc}
/// Arguments for getGenaiAgentVersions.
/// {@endtemplate}
/// {@macro pulumi_index_get_genai_agent_versions_get_genai_agent_versions_args_doc}
class GetGenaiAgentVersionsArgs {
  final pulumi.Input<String> agentId;
  final pulumi.Input<List<GetGenaiAgentVersionsFilter>>? filters;
  final pulumi.Input<List<GetGenaiAgentVersionsSort>>? sorts;

  /// Creates a new [GetGenaiAgentVersionsArgs].
  /// [agentId] Required.
  /// [filters] Optional.
  /// [sorts] Optional.
  GetGenaiAgentVersionsArgs({
    required String agentId,
    List<GetGenaiAgentVersionsFilter>? filters,
    List<GetGenaiAgentVersionsSort>? sorts,
  }) :
      agentId = pulumi.Input.asInput<String>(agentId),
      filters = pulumi.Input.asOptionalInput<List<GetGenaiAgentVersionsFilter>>(filters),
      sorts = pulumi.Input.asOptionalInput<List<GetGenaiAgentVersionsSort>>(sorts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiAgentVersionsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetGenaiAgentVersionsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiAgentVersionsSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetGenaiAgentVersionsSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGenaiAgentVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentVersionsArgs(
      agentId: map['agentId'] as String,
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentVersionsFilter>(map['filters'], (value) => GetGenaiAgentVersionsFilter.fromMap((value as Map).cast<String, dynamic>())),
      sorts: map['sorts'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentVersionsSort>(map['sorts'], (value) => GetGenaiAgentVersionsSort.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

