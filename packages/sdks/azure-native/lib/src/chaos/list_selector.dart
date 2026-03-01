// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'simple_filter.dart';
import 'target_reference.dart';

/// Model that represents a list selector.
class ListSelector {
  /// Model that represents available filter types that can be applied to a targets list.
  final SimpleFilter? filter;
  /// String of the selector ID.
  final String id;
  /// List of Target references.
  final List<TargetReference> targets;
  /// Enum of the selector type.
  /// Expected value is 'List'.
  final String type;

  /// Creates a new [ListSelector].
  /// [filter] Model that represents available filter types that can be applied to a targets list.
  /// [id] String of the selector ID.
  /// [targets] List of Target references.
  /// [type] Enum of the selector type.
  ListSelector({
    this.filter,
    required this.id,
    required this.targets,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter == null ? null : filter!.toMap(),
      'id': id,
      'targets': pulumi.Input.encodeList<TargetReference, Map<String, dynamic>>(targets, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ListSelector.fromMap(Map<String, dynamic> map) {
    return ListSelector(
      filter: map['filter'] == null ? null : SimpleFilter.fromMap((map['filter'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      targets: pulumi.Input.decodeList<TargetReference>(map['targets'], (value) => TargetReference.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

