// ignore_for_file: unused_element, unnecessary_cast

class InterconnectGroupConfiguredTopologyCapabilityIntendedCapabilityBlocker {
  /// (Output)
  /// The category of an unmet SLA requirement. The Intended
  /// SLA Blockers section below explains this field and how it relates to
  /// other fields in intendedCapabilityBlockers.
  final String? blockerType;

  /// (Output)
  /// The url of Google Cloud public documentation explaining
  /// this requirement. This is set for every type of requirement.
  final String? documentationLink;

  /// (Output)
  /// A human-readable explanation of this requirement and
  /// why it's not met. This is set for every type of requirement.
  final String? explanation;

  /// (Output)
  /// Facilities used to explain this blocker in more detail.
  /// Like physicalStructure.metros.facilities.facility, this is a numeric
  /// string like "5467".
  final List<String>? facilities;

  /// Interconnects in the InterconnectGroup. Keys are arbitrary user-specified
  /// strings. Users are encouraged, but not required, to use their preferred
  /// format for resource links as keys.
  /// Note that there are add-members and remove-members methods in gcloud.
  /// The size of this map is limited by an "Interconnects per group" quota.
  /// Structure is documented below.
  final List<String>? interconnects;

  /// (Output)
  /// Metros used to explain this blocker in more detail.
  /// These are three-letter lowercase strings like "iad". A blocker like
  /// INCOMPATIBLE_METROS will specify the problematic metros in this
  /// field.
  final List<String>? metros;

  /// (Output)
  /// Zones used to explain this blocker in more detail.
  /// Zone names are "zone1" and/or "zone2".
  final List<String>? zones;

  /// Creates a new [InterconnectGroupConfiguredTopologyCapabilityIntendedCapabilityBlocker].
  /// [blockerType] (Output)
  /// [documentationLink] (Output)
  /// [explanation] (Output)
  /// [facilities] (Output)
  /// [interconnects] Interconnects in the InterconnectGroup. Keys are arbitrary user-specified
  /// [metros] (Output)
  /// [zones] (Output)
  InterconnectGroupConfiguredTopologyCapabilityIntendedCapabilityBlocker({
    this.blockerType,
    this.documentationLink,
    this.explanation,
    this.facilities,
    this.interconnects,
    this.metros,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockerType': ?blockerType,
      'documentationLink': ?documentationLink,
      'explanation': ?explanation,
      'facilities': ?facilities,
      'interconnects': ?interconnects,
      'metros': ?metros,
      'zones': ?zones,
    };
  }

  factory InterconnectGroupConfiguredTopologyCapabilityIntendedCapabilityBlocker.fromMap(
    Map<String, dynamic> map,
  ) {
    return InterconnectGroupConfiguredTopologyCapabilityIntendedCapabilityBlocker(
      blockerType: map['blockerType'] == null
          ? null
          : map['blockerType'] as String,
      documentationLink: map['documentationLink'] == null
          ? null
          : map['documentationLink'] as String,
      explanation: map['explanation'] == null
          ? null
          : map['explanation'] as String,
      facilities: map['facilities'] == null
          ? null
          : (map['facilities'] as List).cast<String>(),
      interconnects: map['interconnects'] == null
          ? null
          : (map['interconnects'] as List).cast<String>(),
      metros: map['metros'] == null
          ? null
          : (map['metros'] as List).cast<String>(),
      zones: map['zones'] == null
          ? null
          : (map['zones'] as List).cast<String>(),
    );
  }
}
