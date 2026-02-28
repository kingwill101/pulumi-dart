// ignore_for_file: unused_element, unnecessary_cast

class AppMonitorCustomEvents {
  /// Specifies whether this app monitor allows the web client to define and send custom events. The default is for custom events to be `DISABLED`. Valid values are `DISABLED` and `ENABLED`.
  final String? status;

  /// Creates a new [AppMonitorCustomEvents].
  /// [status] Specifies whether this app monitor allows the web client to define and send custom events. The default is for custom events to be `DISABLED`. Valid values are `DISABLED` and `ENABLED`.
  AppMonitorCustomEvents({
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory AppMonitorCustomEvents.fromMap(Map<String, dynamic> map) {
    return AppMonitorCustomEvents(
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
