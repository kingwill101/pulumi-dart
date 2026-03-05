// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mime_type_filter.dart';

/// Rules for filtering files based on Media types (f.k.a MIME types).
class MimeFilterRuleset {
  /// Defines the Media types (f.k.a MIME types) and associated file extensions to be filtered. For more detail, please refer to the MimeTypeFiler model.
  final pulumi.Input<List<MimeTypeFilter>>? filters;
  /// Specifies whether the filter is an allow list or deny list. For more detail, please refer to the FilterType model.
  final pulumi.Input<String>? type;

  /// Creates a new [MimeFilterRuleset].
  /// [filters] Defines the Media types (f.k.a MIME types) and associated file extensions to be filtered. For more detail, please refer to the MimeTypeFiler model.
  /// [type] Specifies whether the filter is an allow list or deny list. For more detail, please refer to the FilterType model.
  MimeFilterRuleset({
    this.filters,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<MimeTypeFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<MimeTypeFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory MimeFilterRuleset.fromMap(Map<String, dynamic> map) {
    return MimeFilterRuleset(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MimeTypeFilter>(guardedValue, (value) => MimeTypeFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

