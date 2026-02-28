// ignore_for_file: unused_element, unnecessary_cast

class SystraceSetupResponse {
  /// Systrace duration in seconds. Should be between 1 and 30 seconds. 0 disables systrace.
  final int durationSeconds;

  /// Creates a new [SystraceSetupResponse].
  /// [durationSeconds] Systrace duration in seconds. Should be between 1 and 30 seconds. 0 disables systrace.
  SystraceSetupResponse({
    required this.durationSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['durationSeconds'] = durationSeconds;
    return map;
  }

  factory SystraceSetupResponse.fromMap(Map<String, dynamic> map) {
    return SystraceSetupResponse(
      durationSeconds: map['durationSeconds'] as int,
    );
  }
}
