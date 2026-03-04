// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InstanceAttachmentEnaSrdUdpSpecification
class InstanceAttachmentEnaSrdUdpSpecification {
  /// &lt;p&gt;Indicates whether UDP traffic to and from the instance uses ENA Express. To specify this setting, you must first enable ENA Express.&lt;/p&gt;
  final pulumi.Input<bool>? enaSrdUdpEnabled;

  /// Creates a new [InstanceAttachmentEnaSrdUdpSpecification].
  /// [enaSrdUdpEnabled] &lt;p&gt;Indicates whether UDP traffic to and from the instance uses ENA Express. To specify this setting, you must first enable ENA Express.&lt;/p&gt;
  InstanceAttachmentEnaSrdUdpSpecification({this.enaSrdUdpEnabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enaSrdUdpEnabled': ?enaSrdUdpEnabled};
  }

  factory InstanceAttachmentEnaSrdUdpSpecification.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceAttachmentEnaSrdUdpSpecification(
      enaSrdUdpEnabled: (() {
        final guardedValue = map['enaSrdUdpEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
