// ignore_for_file: unused_element, unnecessary_cast


/// Describes related incident information for the bookmark
class IncidentInfoResponse {
  /// Incident Id
  final String? incidentId;
  /// Relation Name
  final String? relationName;
  /// The severity of the incident
  final String? severity;
  /// The title of the incident
  final String? title;

  /// Creates a new [IncidentInfoResponse].
  /// [incidentId] Incident Id
  /// [relationName] Relation Name
  /// [severity] The severity of the incident
  /// [title] The title of the incident
  IncidentInfoResponse({
    this.incidentId,
    this.relationName,
    this.severity,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'incidentId': ?incidentId,
      'relationName': ?relationName,
      'severity': ?severity,
      'title': ?title,
    };
  }

  factory IncidentInfoResponse.fromMap(Map<String, dynamic> map) {
    return IncidentInfoResponse(
      incidentId: map['incidentId'] == null ? null : map['incidentId'] as String,
      relationName: map['relationName'] == null ? null : map['relationName'] as String,
      severity: map['severity'] == null ? null : map['severity'] as String,
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}

