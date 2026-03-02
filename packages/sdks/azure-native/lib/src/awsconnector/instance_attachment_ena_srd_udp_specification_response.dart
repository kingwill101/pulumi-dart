// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InstanceAttachmentEnaSrdUdpSpecification
class InstanceAttachmentEnaSrdUdpSpecificationResponse {
  /// <p>Indicates whether UDP traffic to and from the instance uses ENA Express. To specify this setting, you must first enable ENA Express.</p>
  final pulumi.Input<bool>? enaSrdUdpEnabled;

  /// Creates a new [InstanceAttachmentEnaSrdUdpSpecificationResponse].
  /// [enaSrdUdpEnabled] <p>Indicates whether UDP traffic to and from the instance uses ENA Express. To specify this setting, you must first enable ENA Express.</p>
  InstanceAttachmentEnaSrdUdpSpecificationResponse({
    this.enaSrdUdpEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enaSrdUdpEnabled': ?enaSrdUdpEnabled,
    };
  }

  factory InstanceAttachmentEnaSrdUdpSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return InstanceAttachmentEnaSrdUdpSpecificationResponse(
      enaSrdUdpEnabled: map['enaSrdUdpEnabled'] == null ? null : (map['enaSrdUdpEnabled']! as bool).input(),
    );
  }
}

