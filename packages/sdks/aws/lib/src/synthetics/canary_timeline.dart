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
  const CanaryTimeline({
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
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModified: (() { final guardedValue = map['lastModified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastStarted: (() { final guardedValue = map['lastStarted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastStopped: (() { final guardedValue = map['lastStopped']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

