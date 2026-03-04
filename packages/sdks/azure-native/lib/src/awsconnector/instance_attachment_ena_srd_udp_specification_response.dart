// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InstanceAttachmentEnaSrdUdpSpecification
class InstanceAttachmentEnaSrdUdpSpecificationResponse {
  /// &lt;p&gt;Indicates whether UDP traffic to and from the instance uses ENA Express. To specify this setting, you must first enable ENA Express.&lt;/p&gt;
  final pulumi.Input<bool>? enaSrdUdpEnabled;

  /// Creates a new [InstanceAttachmentEnaSrdUdpSpecificationResponse].
  /// [enaSrdUdpEnabled] &lt;p&gt;Indicates whether UDP traffic to and from the instance uses ENA Express. To specify this setting, you must first enable ENA Express.&lt;/p&gt;
  InstanceAttachmentEnaSrdUdpSpecificationResponse({this.enaSrdUdpEnabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enaSrdUdpEnabled': ?enaSrdUdpEnabled};
  }

  factory InstanceAttachmentEnaSrdUdpSpecificationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceAttachmentEnaSrdUdpSpecificationResponse(
      enaSrdUdpEnabled: (() {
        final guardedValue = map['enaSrdUdpEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
