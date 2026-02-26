// ignore_for_file: unused_element, unnecessary_cast

/// InputDataset used to create model or do evaluation. NextID:5
class GoogleCloudDialogflowV2InputDataset {
  /// ConversationDataset resource name. Format: `projects//locations//conversationDatasets/`
  final String dataset;

  GoogleCloudDialogflowV2InputDataset({
    required this.dataset,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataset'] = dataset;
    return map;
  }

  factory GoogleCloudDialogflowV2InputDataset.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2InputDataset(
      dataset: map['dataset'] as String,
    );
  }
}
