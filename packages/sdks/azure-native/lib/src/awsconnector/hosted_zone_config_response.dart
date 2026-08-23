// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of HostedZoneConfig
class HostedZoneConfigResponse {
  /// Any comments that you want to include about the hosted zone.
  final pulumi.Input<String>? comment;

  /// Creates a new [HostedZoneConfigResponse].
  /// [comment] Any comments that you want to include about the hosted zone.
  const HostedZoneConfigResponse({
    this.comment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
    };
  }

  factory HostedZoneConfigResponse.fromMap(Map<String, dynamic> map) {
    return HostedZoneConfigResponse(
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
