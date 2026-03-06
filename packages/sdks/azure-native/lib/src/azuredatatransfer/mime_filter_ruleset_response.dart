// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mime_type_filter_response.dart';

/// Rules for filtering files based on Media types (f.k.a MIME types).
class MimeFilterRulesetResponse {
  /// Defines the Media types (f.k.a MIME types) and associated file extensions to be filtered. For more detail, please refer to the MimeTypeFiler model.
  final pulumi.Input<List<MimeTypeFilterResponse>>? filters;
  /// Specifies whether the filter is an allow list or deny list. For more detail, please refer to the FilterType model.
  final pulumi.Input<String>? type;

  /// Creates a new [MimeFilterRulesetResponse].
  /// [filters] Defines the Media types (f.k.a MIME types) and associated file extensions to be filtered. For more detail, please refer to the MimeTypeFiler model.
  /// [type] Specifies whether the filter is an allow list or deny list. For more detail, please refer to the FilterType model.
  const MimeFilterRulesetResponse({
    this.filters,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<MimeTypeFilterResponse>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<MimeTypeFilterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory MimeFilterRulesetResponse.fromMap(Map<String, dynamic> map) {
    return MimeFilterRulesetResponse(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MimeTypeFilterResponse>(guardedValue, (value) => MimeTypeFilterResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

