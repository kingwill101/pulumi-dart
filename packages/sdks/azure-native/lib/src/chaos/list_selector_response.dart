// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'simple_filter_response.dart';
import 'target_reference_response.dart';

/// Model that represents a list selector.
class ListSelectorResponse {
  /// Model that represents available filter types that can be applied to a targets list.
  final pulumi.Input<SimpleFilterResponse>? filter;
  /// String of the selector ID.
  final pulumi.Input<String> id;
  /// List of Target references.
  final pulumi.Input<List<TargetReferenceResponse>> targets;
  /// Enum of the selector type.
  /// Expected value is 'List'.
  final pulumi.Input<String> type;

  /// Creates a new [ListSelectorResponse].
  /// [filter] Model that represents available filter types that can be applied to a targets list.
  /// [id] String of the selector ID.
  /// [targets] List of Target references.
  /// [type] Enum of the selector type.
  const ListSelectorResponse({
    this.filter,
    required this.id,
    required this.targets,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?pulumi.Input.mapOptionalInputValue<SimpleFilterResponse, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'id': id,
      'targets': pulumi.Input.mapInputValue<List<TargetReferenceResponse>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<TargetReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory ListSelectorResponse.fromMap(Map<String, dynamic> map) {
    return ListSelectorResponse(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SimpleFilterResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      targets: pulumi.Input.fromValue(pulumi.Input.decodeList<TargetReferenceResponse>(map['targets']!, (value) => TargetReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

