// ignore_for_file: unused_element, unnecessary_cast

/// Human Review information of the document.
class GoogleCloudDocumentaiV1DocumentRevisionHumanReview {
  /// Human review state. e.g. `requested`, `succeeded`, `rejected`.
  final String? state;

  /// A message providing more details about the current state of processing. For example, the rejection reason when the state is `rejected`.
  final String? stateMessage;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentRevisionHumanReview].
  /// [state] Human review state. e.g. `requested`, `succeeded`, `rejected`.
  /// [stateMessage] A message providing more details about the current state of processing. For example, the rejection reason when the state is `rejected`.
  GoogleCloudDocumentaiV1DocumentRevisionHumanReview({
    this.state,
    this.stateMessage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final stateMessageValue = stateMessage;
    if (stateMessageValue != null) {
      map['stateMessage'] = stateMessageValue;
    }
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentRevisionHumanReview.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentRevisionHumanReview(
      state: map['state'] == null ? null : map['state'] as String,
      stateMessage:
          map['stateMessage'] == null ? null : map['stateMessage'] as String,
    );
  }
}
