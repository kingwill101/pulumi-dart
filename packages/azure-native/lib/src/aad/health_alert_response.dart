// ignore_for_file: unused_element, unnecessary_cast


/// Health Alert Description
class HealthAlertResponse {
  /// Health Alert Id
  final String id;
  /// Health Alert Issue
  final String issue;
  /// Health Alert Last Detected DateTime
  final String lastDetected;
  /// Health Alert Name
  final String name;
  /// Health Alert Raised DateTime
  final String raised;
  /// Health Alert TSG Link
  final String resolutionUri;
  /// Health Alert Severity
  final String severity;

  /// Creates a new [HealthAlertResponse].
  /// [id] Health Alert Id
  /// [issue] Health Alert Issue
  /// [lastDetected] Health Alert Last Detected DateTime
  /// [name] Health Alert Name
  /// [raised] Health Alert Raised DateTime
  /// [resolutionUri] Health Alert TSG Link
  /// [severity] Health Alert Severity
  HealthAlertResponse({
    required this.id,
    required this.issue,
    required this.lastDetected,
    required this.name,
    required this.raised,
    required this.resolutionUri,
    required this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'issue': issue,
      'lastDetected': lastDetected,
      'name': name,
      'raised': raised,
      'resolutionUri': resolutionUri,
      'severity': severity,
    };
  }

  factory HealthAlertResponse.fromMap(Map<String, dynamic> map) {
    return HealthAlertResponse(
      id: map['id'] as String,
      issue: map['issue'] as String,
      lastDetected: map['lastDetected'] as String,
      name: map['name'] as String,
      raised: map['raised'] as String,
      resolutionUri: map['resolutionUri'] as String,
      severity: map['severity'] as String,
    );
  }
}

