// ignore_for_file: unused_element, unnecessary_cast

/// Represents the event to trigger.
class GoogleCloudDialogflowCxV3EventInput {
  /// Name of the event.
  final String? event;

  GoogleCloudDialogflowCxV3EventInput({
    this.event,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final eventValue = event;
    if (eventValue != null) {
      map['event'] = eventValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3EventInput.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3EventInput(
      event: map['event'] == null ? null : map['event'] as String,
    );
  }
}
