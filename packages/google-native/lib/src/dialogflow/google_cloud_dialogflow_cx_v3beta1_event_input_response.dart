// ignore_for_file: unused_element, unnecessary_cast

/// Represents the event to trigger.
class GoogleCloudDialogflowCxV3beta1EventInputResponse {
  /// Name of the event.
  final String event;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1EventInputResponse].
  /// [event] Name of the event.
  GoogleCloudDialogflowCxV3beta1EventInputResponse({required this.event});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'event': event};
  }

  factory GoogleCloudDialogflowCxV3beta1EventInputResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3beta1EventInputResponse(
      event: map['event'] as String,
    );
  }
}
