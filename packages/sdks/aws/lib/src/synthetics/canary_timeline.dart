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

  /// Creates a new [CanaryTimeline].
  /// [created] Date and time the canary was created.
  /// [lastModified] Date and time the canary was most recently modified.
  /// [lastStarted] Date and time that the canary's most recent run started.
  /// [lastStopped] Date and time that the canary's most recent run ended.
  CanaryTimeline({
    this.created,
    this.lastModified,
    this.lastStarted,
    this.lastStopped,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': ?created,
      'lastModified': ?lastModified,
      'lastStarted': ?lastStarted,
      'lastStopped': ?lastStopped,
    };
  }

  factory CanaryTimeline.fromMap(Map<String, dynamic> map) {
    return CanaryTimeline(
      created: map['created'] == null ? null : map['created'] as String,
      lastModified: map['lastModified'] == null ? null : map['lastModified'] as String,
      lastStarted: map['lastStarted'] == null ? null : map['lastStarted'] as String,
      lastStopped: map['lastStopped'] == null ? null : map['lastStopped'] as String,
    );
  }
}

