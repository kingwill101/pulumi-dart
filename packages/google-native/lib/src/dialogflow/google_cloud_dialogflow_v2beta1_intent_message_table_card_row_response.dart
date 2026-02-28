// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_table_card_cell_response.dart';

/// Row of TableCard.
class GoogleCloudDialogflowV2beta1IntentMessageTableCardRowResponse {
  /// Optional. List of cells that make up this row.
  final List<GoogleCloudDialogflowV2beta1IntentMessageTableCardCellResponse>
      cells;

  /// Optional. Whether to add a visual divider after this row.
  final bool dividerAfter;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageTableCardRowResponse].
  /// [cells] Optional. List of cells that make up this row.
  /// [dividerAfter] Optional. Whether to add a visual divider after this row.
  GoogleCloudDialogflowV2beta1IntentMessageTableCardRowResponse({
    required this.cells,
    required this.dividerAfter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cells'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowV2beta1IntentMessageTableCardCellResponse,
        Map<String, dynamic>>(cells, (value) => value.toMap());
    map['dividerAfter'] = dividerAfter;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageTableCardRowResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageTableCardRowResponse(
      cells: pulumi.Input.decodeList<
              GoogleCloudDialogflowV2beta1IntentMessageTableCardCellResponse>(
          map['cells'],
          (value) =>
              GoogleCloudDialogflowV2beta1IntentMessageTableCardCellResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
      dividerAfter: map['dividerAfter'] as bool,
    );
  }
}
