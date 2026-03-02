// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CanaryTimeline {
  /// Date and time the canary was created.
  final pulumi.Input<String>? created;
  /// Date and time the canary was most recently modified.
  final pulumi.Input<String>? lastModified;
  /// Date and time that the canary's most recent run started.
  final pulumi.Input<String>? lastStarted;
  /// Date and time that the canary's most recent run ended.
  final pulumi.Input<String>? lastStopped;

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
      created: map['created'] == null ? null : ((map['created'] as String).input()).input(),
      lastModified: map['lastModified'] == null ? null : ((map['lastModified'] as String).input()).input(),
      lastStarted: map['lastStarted'] == null ? null : ((map['lastStarted'] as String).input()).input(),
      lastStopped: map['lastStopped'] == null ? null : ((map['lastStopped'] as String).input()).input(),
    );
  }
}

