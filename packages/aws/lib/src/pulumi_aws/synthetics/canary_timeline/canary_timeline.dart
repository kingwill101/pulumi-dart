// ignore_for_file: unused_element, unnecessary_cast

class CanaryTimeline {
  /// Date and time the canary was created.
  final String? created;

  /// Date and time the canary was most recently modified.
  final String? lastModified;

  /// Date and time that the canary's most recent run started.
  final String? lastStarted;

  /// Date and time that the canary's most recent run ended.
  final String? lastStopped;

  CanaryTimeline({
    this.created,
    this.lastModified,
    this.lastStarted,
    this.lastStopped,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createdValue = created;
    if (createdValue != null) {
      map['created'] = createdValue;
    }
    final lastModifiedValue = lastModified;
    if (lastModifiedValue != null) {
      map['lastModified'] = lastModifiedValue;
    }
    final lastStartedValue = lastStarted;
    if (lastStartedValue != null) {
      map['lastStarted'] = lastStartedValue;
    }
    final lastStoppedValue = lastStopped;
    if (lastStoppedValue != null) {
      map['lastStopped'] = lastStoppedValue;
    }
    return map;
  }

  factory CanaryTimeline.fromMap(Map<String, dynamic> map) {
    return CanaryTimeline(
      created: map['created'] == null ? null : map['created'] as String,
      lastModified:
          map['lastModified'] == null ? null : map['lastModified'] as String,
      lastStarted:
          map['lastStarted'] == null ? null : map['lastStarted'] as String,
      lastStopped:
          map['lastStopped'] == null ? null : map['lastStopped'] as String,
    );
  }
}
