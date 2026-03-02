// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InstanceAttachmentEnaSrdUdpSpecification
class InstanceAttachmentEnaSrdUdpSpecification {
  /// <p>Indicates whether UDP traffic to and from the instance uses ENA Express. To specify this setting, you must first enable ENA Express.</p>
  final pulumi.Input<bool>? enaSrdUdpEnabled;

  /// Creates a new [InstanceAttachmentEnaSrdUdpSpecification].
  /// [enaSrdUdpEnabled] <p>Indicates whether UDP traffic to and from the instance uses ENA Express. To specify this setting, you must first enable ENA Express.</p>
  InstanceAttachmentEnaSrdUdpSpecification({
    this.enaSrdUdpEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enaSrdUdpEnabled': ?enaSrdUdpEnabled,
    };
  }

  factory InstanceAttachmentEnaSrdUdpSpecification.fromMap(Map<String, dynamic> map) {
    return InstanceAttachmentEnaSrdUdpSpecification(
      enaSrdUdpEnabled: map['enaSrdUdpEnabled'] == null ? null : (map['enaSrdUdpEnabled']! as bool).input(),
    );
  }
}

