// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ImageScanFindingsSummary
class ImageScanFindingsSummary {
  /// &lt;p&gt;The image vulnerability counts, sorted by severity.&lt;/p&gt;
  final pulumi.Input<Map<String, int>>? findingSeverityCounts;
  /// &lt;p&gt;The time of the last completed image scan.&lt;/p&gt;
  final pulumi.Input<String>? imageScanCompletedAt;
  /// &lt;p&gt;The time when the vulnerability data was last scanned.&lt;/p&gt;
  final pulumi.Input<String>? vulnerabilitySourceUpdatedAt;

  /// Creates a new [ImageScanFindingsSummary].
  /// [findingSeverityCounts] &lt;p&gt;The image vulnerability counts, sorted by severity.&lt;/p&gt;
  /// [imageScanCompletedAt] &lt;p&gt;The time of the last completed image scan.&lt;/p&gt;
  /// [vulnerabilitySourceUpdatedAt] &lt;p&gt;The time when the vulnerability data was last scanned.&lt;/p&gt;
  const ImageScanFindingsSummary({
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
      findingSeverityCounts: (() { final guardedValue = map['findingSeverityCounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, int>()); })(),
      imageScanCompletedAt: (() { final guardedValue = map['imageScanCompletedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vulnerabilitySourceUpdatedAt: (() { final guardedValue = map['vulnerabilitySourceUpdatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

