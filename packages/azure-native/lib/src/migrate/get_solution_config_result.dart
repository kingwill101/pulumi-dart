// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSolutionConfig.
class GetSolutionConfigResult {
  /// Gets or sets the publisher sas uri for the solution.
  final String? publisherSasUri;

  /// Creates a new [GetSolutionConfigResult].
  /// [publisherSasUri] Gets or sets the publisher sas uri for the solution.
  GetSolutionConfigResult({
    this.publisherSasUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publisherSasUri': ?publisherSasUri,
    };
  }

  factory GetSolutionConfigResult.fromMap(Map<String, dynamic> map) {
    return GetSolutionConfigResult(
      publisherSasUri: map['publisherSasUri'] == null ? null : map['publisherSasUri'] as String,
    );
  }
}

