// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'simple_filter_response.dart';
import 'target_reference_response.dart';

/// Model that represents a list selector.
class ListSelectorResponse {
  /// Model that represents available filter types that can be applied to a targets list.
  final SimpleFilterResponse? filter;
  /// String of the selector ID.
  final String id;
  /// List of Target references.
  final List<TargetReferenceResponse> targets;
  /// Enum of the selector type.
  /// Expected value is 'List'.
  final String type;

  /// Creates a new [ListSelectorResponse].
  /// [filter] Model that represents available filter types that can be applied to a targets list.
  /// [id] String of the selector ID.
  /// [targets] List of Target references.
  /// [type] Enum of the selector type.
  ListSelectorResponse({
    this.filter,
    required this.id,
    required this.targets,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter == null ? null : filter!.toMap(),
      'id': id,
      'targets': pulumi.Input.encodeList<TargetReferenceResponse, Map<String, dynamic>>(targets, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ListSelectorResponse.fromMap(Map<String, dynamic> map) {
    return ListSelectorResponse(
      filter: map['filter'] == null ? null : SimpleFilterResponse.fromMap((map['filter'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      targets: pulumi.Input.decodeList<TargetReferenceResponse>(map['targets'], (value) => TargetReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

