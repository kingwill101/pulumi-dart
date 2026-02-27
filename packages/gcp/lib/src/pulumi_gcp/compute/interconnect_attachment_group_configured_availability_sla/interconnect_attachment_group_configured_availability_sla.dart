// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../interconnect_attachment_group_configured_availability_sla_intended_sla_blocker/interconnect_attachment_group_configured_availability_sla_intended_sla_blocker.dart';

class InterconnectAttachmentGroupConfiguredAvailabilitySla {
  /// (Output)
  /// Which SLA this group supports. Options are the same as the
  /// intent.
  final String? effectiveSla;

  /// (Output)
  /// Reasons why configuration.availabilitySLA.sla differs from
  /// intent.availabilitySLA. This list is empty if and only if those are the
  /// same.
  /// Structure is documented below.
  final List<
          InterconnectAttachmentGroupConfiguredAvailabilitySlaIntendedSlaBlocker>?
      intendedSlaBlockers;

  InterconnectAttachmentGroupConfiguredAvailabilitySla({
    this.effectiveSla,
    this.intendedSlaBlockers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final effectiveSlaValue = effectiveSla;
    if (effectiveSlaValue != null) {
      map['effectiveSla'] = effectiveSlaValue;
    }
    final intendedSlaBlockersValue = intendedSlaBlockers;
    if (intendedSlaBlockersValue != null) {
      map['intendedSlaBlockers'] = pulumi.Input.encodeList<
          InterconnectAttachmentGroupConfiguredAvailabilitySlaIntendedSlaBlocker,
          Map<String,
              dynamic>>(intendedSlaBlockersValue, (value) => value.toMap());
    }
    return map;
  }

  factory InterconnectAttachmentGroupConfiguredAvailabilitySla.fromMap(
      Map<String, dynamic> map) {
    return InterconnectAttachmentGroupConfiguredAvailabilitySla(
      effectiveSla:
          map['effectiveSla'] == null ? null : map['effectiveSla'] as String,
      intendedSlaBlockers: map['intendedSlaBlockers'] == null
          ? null
          : pulumi.Input.decodeList<
                  InterconnectAttachmentGroupConfiguredAvailabilitySlaIntendedSlaBlocker>(
              map['intendedSlaBlockers'],
              (value) =>
                  InterconnectAttachmentGroupConfiguredAvailabilitySlaIntendedSlaBlocker
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
