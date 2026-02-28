// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCertificateMapEntry.
class GetCertificateMapEntryResult {
  /// A set of Certificates defines for the given `hostname`. There can be defined up to four certificates in each Certificate Map Entry. Each certificate must match pattern `projects/*/locations/*/certificates/*`.
  final List<String> certificates;
  /// The creation timestamp of a Certificate Map Entry.
  final String createTime;
  /// One or more paragraphs of text description of a certificate map entry.
  final String description;
  /// A Hostname (FQDN, e.g. `example.com`) or a wildcard hostname expression (`*.example.com`) for a set of hostnames with common suffix. Used as Server Name Indication (SNI) for selecting a proper certificate.
  final String hostname;
  /// Set of labels associated with a Certificate Map Entry.
  final Map<String, String> labels;
  /// A predefined matcher for particular cases, other than SNI selection.
  final String matcher;
  /// A user-defined name of the Certificate Map Entry. Certificate Map Entry names must be unique globally and match pattern `projects/*/locations/*/certificateMaps/*/certificateMapEntries/*`.
  final String name;
  /// A serving state of this Certificate Map Entry.
  final String state;
  /// The update timestamp of a Certificate Map Entry.
  final String updateTime;

  /// Creates a new [GetCertificateMapEntryResult].
  /// [certificates] A set of Certificates defines for the given `hostname`. There can be defined up to four certificates in each Certificate Map Entry. Each certificate must match pattern `projects/*/locations/*/certificates/*`.
  /// [createTime] The creation timestamp of a Certificate Map Entry.
  /// [description] One or more paragraphs of text description of a certificate map entry.
  /// [hostname] A Hostname (FQDN, e.g. `example.com`) or a wildcard hostname expression (`*.example.com`) for a set of hostnames with common suffix. Used as Server Name Indication (SNI) for selecting a proper certificate.
  /// [labels] Set of labels associated with a Certificate Map Entry.
  /// [matcher] A predefined matcher for particular cases, other than SNI selection.
  /// [name] A user-defined name of the Certificate Map Entry. Certificate Map Entry names must be unique globally and match pattern `projects/*/locations/*/certificateMaps/*/certificateMapEntries/*`.
  /// [state] A serving state of this Certificate Map Entry.
  /// [updateTime] The update timestamp of a Certificate Map Entry.
  GetCertificateMapEntryResult({
    required this.certificates,
    required this.createTime,
    required this.description,
    required this.hostname,
    required this.labels,
    required this.matcher,
    required this.name,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': certificates,
      'createTime': createTime,
      'description': description,
      'hostname': hostname,
      'labels': labels,
      'matcher': matcher,
      'name': name,
      'state': state,
      'updateTime': updateTime,
    };
  }

  factory GetCertificateMapEntryResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateMapEntryResult(
      certificates: (map['certificates'] as List).cast<String>(),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      hostname: map['hostname'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      matcher: map['matcher'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

