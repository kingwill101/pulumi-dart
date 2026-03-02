// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ImageScanFindingsSummary
class ImageScanFindingsSummary {
  /// <p>The image vulnerability counts, sorted by severity.</p>
  final pulumi.Input<Map<String, int>>? findingSeverityCounts;
  /// <p>The time of the last completed image scan.</p>
  final pulumi.Input<String>? imageScanCompletedAt;
  /// <p>The time when the vulnerability data was last scanned.</p>
  final pulumi.Input<String>? vulnerabilitySourceUpdatedAt;

  /// Creates a new [ImageScanFindingsSummary].
  /// [findingSeverityCounts] <p>The image vulnerability counts, sorted by severity.</p>
  /// [imageScanCompletedAt] <p>The time of the last completed image scan.</p>
  /// [vulnerabilitySourceUpdatedAt] <p>The time when the vulnerability data was last scanned.</p>
  ImageScanFindingsSummary({
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

  factory ImageScanFindingsSummary.fromMap(Map<String, dynamic> map) {
    return ImageScanFindingsSummary(
      findingSeverityCounts: map['findingSeverityCounts'] == null ? null : ((map['findingSeverityCounts']! as Map).cast<String, int>()).input(),
      imageScanCompletedAt: map['imageScanCompletedAt'] == null ? null : (map['imageScanCompletedAt']! as String).input(),
      vulnerabilitySourceUpdatedAt: map['vulnerabilitySourceUpdatedAt'] == null ? null : (map['vulnerabilitySourceUpdatedAt']! as String).input(),
    );
  }
}

