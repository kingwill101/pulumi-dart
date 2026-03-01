// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_parts.dart';

/// A dashboard lens.
class DashboardLens {
  /// The dashboard len's metadata.
  final dynamic metadata;
  /// The lens order.
  final int order;
  /// The dashboard parts.
  final List<DashboardParts> parts;

  /// Creates a new [DashboardLens].
  /// [metadata] The dashboard len's metadata.
  /// [order] The lens order.
  /// [parts] The dashboard parts.
  DashboardLens({
    this.metadata,
    required this.order,
    required this.parts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata,
      'order': order,
      'parts': pulumi.Input.encodeList<DashboardParts, Map<String, dynamic>>(parts, (value) => value.toMap()),
    };
  }

  factory DashboardLens.fromMap(Map<String, dynamic> map) {
    return DashboardLens(
      metadata: map['metadata'] == null ? null : map['metadata'],
      order: map['order'] as int,
      parts: pulumi.Input.decodeList<DashboardParts>(map['parts'], (value) => DashboardParts.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

