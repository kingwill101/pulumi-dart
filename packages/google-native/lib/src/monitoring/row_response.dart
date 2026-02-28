// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'widget_response.dart';

/// Defines the layout properties and content for a row.
class RowResponse {
  /// The relative weight of this row. The row weight is used to adjust the height of rows on the screen (relative to peers). Greater the weight, greater the height of the row on the screen. If omitted, a value of 1 is used while rendering.
  final String weight;

  /// The display widgets arranged horizontally in this row.
  final List<WidgetResponse> widgets;

  /// Creates a new [RowResponse].
  /// [weight] The relative weight of this row. The row weight is used to adjust the height of rows on the screen (relative to peers). Greater the weight, greater the height of the row on the screen. If omitted, a value of 1 is used while rendering.
  /// [widgets] The display widgets arranged horizontally in this row.
  RowResponse({
    required this.weight,
    required this.widgets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['weight'] = weight;
    map['widgets'] =
        pulumi.Input.encodeList<WidgetResponse, Map<String, dynamic>>(
            widgets, (value) => value.toMap());
    return map;
  }

  factory RowResponse.fromMap(Map<String, dynamic> map) {
    return RowResponse(
      weight: map['weight'] as String,
      widgets: pulumi.Input.decodeList<WidgetResponse>(
          map['widgets'],
          (value) =>
              WidgetResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
