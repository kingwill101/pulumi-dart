// ignore_for_file: unused_element, unnecessary_cast

/// Additional info about the select item for when it is triggered in a dialog.
class GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo {
  /// A unique key that will be sent back to the agent if this response is given.
  final String key;

  /// Optional. A list of synonyms that can also be used to trigger this item in dialog.
  final List<String>? synonyms;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo].
  /// [key] A unique key that will be sent back to the agent if this response is given.
  /// [synonyms] Optional. A list of synonyms that can also be used to trigger this item in dialog.
  GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo({
    required this.key,
    this.synonyms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'synonyms': ?synonyms};
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo(
      key: map['key'] as String,
      synonyms: map['synonyms'] == null
          ? null
          : (map['synonyms'] as List).cast<String>(),
    );
  }
}
