// ignore_for_file: unused_element, unnecessary_cast

/// Human Review information of the document.
class GoogleCloudDocumentaiV1DocumentRevisionHumanReviewResponse {
  /// Human review state. e.g. `requested`, `succeeded`, `rejected`.
  final String state;

  /// A message providing more details about the current state of processing. For example, the rejection reason when the state is `rejected`.
  final String stateMessage;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentRevisionHumanReviewResponse].
  /// [state] Human review state. e.g. `requested`, `succeeded`, `rejected`.
  /// [stateMessage] A message providing more details about the current state of processing. For example, the rejection reason when the state is `rejected`.
  GoogleCloudDocumentaiV1DocumentRevisionHumanReviewResponse({
    required this.state,
    required this.stateMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'state': state, 'stateMessage': stateMessage};
  }

  factory GoogleCloudDocumentaiV1DocumentRevisionHumanReviewResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDocumentaiV1DocumentRevisionHumanReviewResponse(
      state: map['state'] as String,
      stateMessage: map['stateMessage'] as String,
    );
  }
}
