// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDomainZonefile.
class GetDomainZonefileResult {
  /// The associated domain's unique ID.
  final int domainId;
  final String id;
  /// Array of strings representing the Domain Zonefile.
  final List<String> zoneFiles;

  /// Creates a new [GetDomainZonefileResult].
  /// [domainId] The associated domain's unique ID.
  /// [id] Required.
  /// [zoneFiles] Array of strings representing the Domain Zonefile.
  GetDomainZonefileResult({
    required this.domainId,
    required this.id,
    required this.zoneFiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainId': domainId,
      'id': id,
      'zoneFiles': zoneFiles,
    };
  }

  factory GetDomainZonefileResult.fromMap(Map<String, dynamic> map) {
    return GetDomainZonefileResult(
      domainId: map['domainId'] as int,
      id: map['id'] as String,
      zoneFiles: (map['zoneFiles'] as List).cast<String>(),
    );
  }
}

