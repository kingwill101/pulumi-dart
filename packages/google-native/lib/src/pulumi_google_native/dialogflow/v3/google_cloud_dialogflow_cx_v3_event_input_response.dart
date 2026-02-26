// ignore_for_file: unused_element, unnecessary_cast

/// Represents the event to trigger.
class GoogleCloudDialogflowCxV3EventInputResponse {
  /// Name of the event.
  final String event;

  GoogleCloudDialogflowCxV3EventInputResponse({
    required this.event,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['event'] = event;
    return map;
  }

  factory GoogleCloudDialogflowCxV3EventInputResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3EventInputResponse(
      event: map['event'] as String,
    );
  }
}
