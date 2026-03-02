// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of HostedZoneConfig
class HostedZoneConfig {
  /// Any comments that you want to include about the hosted zone.
  final pulumi.Input<String>? comment;

  /// Creates a new [HostedZoneConfig].
  /// [comment] Any comments that you want to include about the hosted zone.
  HostedZoneConfig({
    this.comment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
    };
  }

  factory HostedZoneConfig.fromMap(Map<String, dynamic> map) {
    return HostedZoneConfig(
      comment: map['comment'] == null ? null : (map['comment'] as String).input(),
    );
  }
}

