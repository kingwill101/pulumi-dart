// ignore_for_file: unused_element, unnecessary_cast

/// Represents the event to trigger.
class GoogleCloudDialogflowCxV3beta1EventInput {
  /// Name of the event.
  final String? event;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1EventInput].
  /// [event] Name of the event.
  GoogleCloudDialogflowCxV3beta1EventInput({
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

  factory GoogleCloudDialogflowCxV3beta1EventInput.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1EventInput(
      event: map['event'] == null ? null : map['event'] as String,
    );
  }
}
