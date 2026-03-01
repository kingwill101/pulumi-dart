// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ImageScanFindingsSummary
class ImageScanFindingsSummaryResponse {
  /// <p>The image vulnerability counts, sorted by severity.</p>
  final Map<String, int>? findingSeverityCounts;
  /// <p>The time of the last completed image scan.</p>
  final String? imageScanCompletedAt;
  /// <p>The time when the vulnerability data was last scanned.</p>
  final String? vulnerabilitySourceUpdatedAt;

  /// Creates a new [ImageScanFindingsSummaryResponse].
  /// [findingSeverityCounts] <p>The image vulnerability counts, sorted by severity.</p>
  /// [imageScanCompletedAt] <p>The time of the last completed image scan.</p>
  /// [vulnerabilitySourceUpdatedAt] <p>The time when the vulnerability data was last scanned.</p>
  ImageScanFindingsSummaryResponse({
    this.findingSeverityCounts,
    this.imageScanCompletedAt,
    this.vulnerabilitySourceUpdatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'findingSeverityCounts': ?findingSeverityCounts,
      'imageScanCompletedAt': ?imageScanCompletedAt,
      'vulnerabilitySourceUpdatedAt': ?vulnerabilitySourceUpdatedAt,
    };
  }

  factory ImageScanFindingsSummaryResponse.fromMap(Map<String, dynamic> map) {
    return ImageScanFindingsSummaryResponse(
      findingSeverityCounts: map['findingSeverityCounts'] == null ? null : (map['findingSeverityCounts'] as Map).cast<String, int>(),
      imageScanCompletedAt: map['imageScanCompletedAt'] == null ? null : map['imageScanCompletedAt'] as String,
      vulnerabilitySourceUpdatedAt: map['vulnerabilitySourceUpdatedAt'] == null ? null : map['vulnerabilitySourceUpdatedAt'] as String,
    );
  }
}

