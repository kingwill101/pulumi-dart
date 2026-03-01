// ignore_for_file: unused_element, unnecessary_cast


/// Links relevant to the assessment
class AssessmentLinksResponse {
  /// Link to assessment in Azure Portal
  final String azurePortalUri;

  /// Creates a new [AssessmentLinksResponse].
  /// [azurePortalUri] Link to assessment in Azure Portal
  AssessmentLinksResponse({
    required this.azurePortalUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azurePortalUri': azurePortalUri,
    };
  }

  factory AssessmentLinksResponse.fromMap(Map<String, dynamic> map) {
    return AssessmentLinksResponse(
      azurePortalUri: map['azurePortalUri'] as String,
    );
  }
}

