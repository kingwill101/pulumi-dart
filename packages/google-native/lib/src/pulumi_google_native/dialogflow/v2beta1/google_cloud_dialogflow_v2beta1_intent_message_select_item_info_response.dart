// ignore_for_file: unused_element, unnecessary_cast

/// Additional info about the select item for when it is triggered in a dialog.
class GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfoResponse {
  /// A unique key that will be sent back to the agent if this response is given.
  final String key;

  /// Optional. A list of synonyms that can also be used to trigger this item in dialog.
  final List<String> synonyms;

  GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfoResponse({
    required this.key,
    required this.synonyms,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['synonyms'] = synonyms;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfoResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfoResponse(
      key: map['key'] as String,
      synonyms: (map['synonyms'] as List).cast<String>(),
    );
  }
}
