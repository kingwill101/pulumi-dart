// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_table_card_cell.dart';

/// Row of TableCard.
class GoogleCloudDialogflowV2IntentMessageTableCardRow {
  /// Optional. List of cells that make up this row.
  final List<GoogleCloudDialogflowV2IntentMessageTableCardCell>? cells;

  /// Optional. Whether to add a visual divider after this row.
  final bool? dividerAfter;

  GoogleCloudDialogflowV2IntentMessageTableCardRow({
    this.cells,
    this.dividerAfter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cellsValue = cells;
    if (cellsValue != null) {
      map['cells'] = pulumi.Input.encodeList<
          GoogleCloudDialogflowV2IntentMessageTableCardCell,
          Map<String, dynamic>>(cellsValue, (value) => value.toMap());
    }
    final dividerAfterValue = dividerAfter;
    if (dividerAfterValue != null) {
      map['dividerAfter'] = dividerAfterValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowV2IntentMessageTableCardRow.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageTableCardRow(
      cells: map['cells'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudDialogflowV2IntentMessageTableCardCell>(
              map['cells'],
              (value) =>
                  GoogleCloudDialogflowV2IntentMessageTableCardCell.fromMap(
                      (value as Map).cast<String, dynamic>())),
      dividerAfter:
          map['dividerAfter'] == null ? null : map['dividerAfter'] as bool,
    );
  }
}
