// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../interconnect_group_physical_structure_metro/interconnect_group_physical_structure_metro.dart';

class InterconnectGroupPhysicalStructure {
  /// (Output)
  /// Metros used to explain this blocker in more detail.
  /// These are three-letter lowercase strings like "iad". A blocker like
  /// INCOMPATIBLE_METROS will specify the problematic metros in this
  /// field.
  final List<InterconnectGroupPhysicalStructureMetro>? metros;

  InterconnectGroupPhysicalStructure({
    this.metros,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final metrosValue = metros;
    if (metrosValue != null) {
      map['metros'] = pulumi.Input.encodeList<
          InterconnectGroupPhysicalStructureMetro,
          Map<String, dynamic>>(metrosValue, (value) => value.toMap());
    }
    return map;
  }

  factory InterconnectGroupPhysicalStructure.fromMap(Map<String, dynamic> map) {
    return InterconnectGroupPhysicalStructure(
      metros: map['metros'] == null
          ? null
          : pulumi.Input.decodeList<InterconnectGroupPhysicalStructureMetro>(
              map['metros'],
              (value) => InterconnectGroupPhysicalStructureMetro.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
