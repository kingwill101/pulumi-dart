// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_table_card_cell_response.dart';

/// Row of TableCard.
class GoogleCloudDialogflowV2IntentMessageTableCardRowResponse {
  /// Optional. List of cells that make up this row.
  final List<GoogleCloudDialogflowV2IntentMessageTableCardCellResponse> cells;

  /// Optional. Whether to add a visual divider after this row.
  final bool dividerAfter;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageTableCardRowResponse].
  /// [cells] Optional. List of cells that make up this row.
  /// [dividerAfter] Optional. Whether to add a visual divider after this row.
  GoogleCloudDialogflowV2IntentMessageTableCardRowResponse({
    required this.cells,
    required this.dividerAfter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cells':
          pulumi.Input.encodeList<
            GoogleCloudDialogflowV2IntentMessageTableCardCellResponse,
            Map<String, dynamic>
          >(cells, (value) => value.toMap()),
      'dividerAfter': dividerAfter,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageTableCardRowResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2IntentMessageTableCardRowResponse(
      cells:
          pulumi.Input.decodeList<
            GoogleCloudDialogflowV2IntentMessageTableCardCellResponse
          >(
            map['cells'],
            (value) =>
                GoogleCloudDialogflowV2IntentMessageTableCardCellResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      dividerAfter: map['dividerAfter'] as bool,
    );
  }
}
