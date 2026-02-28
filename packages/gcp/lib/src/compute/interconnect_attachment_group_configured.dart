// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_attachment_group_configured_availability_sla.dart';

class InterconnectAttachmentGroupConfigured {
  /// (Output)
  /// Which SLA this group is configured to support, and why this
  /// group does or does not meet that SLA's requirements.
  /// Structure is documented below.
  final List<InterconnectAttachmentGroupConfiguredAvailabilitySla>?
      availabilitySlas;

  /// Creates a new [InterconnectAttachmentGroupConfigured].
  /// [availabilitySlas] (Output)
  InterconnectAttachmentGroupConfigured({
    this.availabilitySlas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final availabilitySlasValue = availabilitySlas;
    if (availabilitySlasValue != null) {
      map['availabilitySlas'] = pulumi.Input.encodeList<
              InterconnectAttachmentGroupConfiguredAvailabilitySla,
              Map<String, dynamic>>(
          availabilitySlasValue, (value) => value.toMap());
    }
    return map;
  }

  factory InterconnectAttachmentGroupConfigured.fromMap(
      Map<String, dynamic> map) {
    return InterconnectAttachmentGroupConfigured(
      availabilitySlas: map['availabilitySlas'] == null
          ? null
          : pulumi.Input.decodeList<
                  InterconnectAttachmentGroupConfiguredAvailabilitySla>(
              map['availabilitySlas'],
              (value) =>
                  InterconnectAttachmentGroupConfiguredAvailabilitySla.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
