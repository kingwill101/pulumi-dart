// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'simple_filter.dart';
import 'target_reference.dart';

/// Model that represents a list selector.
class ListSelector {
  /// Model that represents available filter types that can be applied to a targets list.
  final pulumi.Input<SimpleFilter>? filter;
  /// String of the selector ID.
  final pulumi.Input<String> id;
  /// List of Target references.
  final pulumi.Input<List<TargetReference>> targets;
  /// Enum of the selector type.
  /// Expected value is 'List'.
  final pulumi.Input<String> type;

  /// Creates a new [ListSelector].
  /// [filter] Model that represents available filter types that can be applied to a targets list.
  /// [id] String of the selector ID.
  /// [targets] List of Target references.
  /// [type] Enum of the selector type.
  const ListSelector({
    this.filter,
    required this.id,
    required this.targets,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?pulumi.Input.mapOptionalInputValue<SimpleFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'id': id,
      'targets': pulumi.Input.mapInputValue<List<TargetReference>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<TargetReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory ListSelector.fromMap(Map<String, dynamic> map) {
    return ListSelector(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SimpleFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      targets: pulumi.Input.fromValue(pulumi.Input.decodeList<TargetReference>(map['targets']!, (value) => TargetReference.fromMap((value as Map).cast<String, dynamic>()))),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

