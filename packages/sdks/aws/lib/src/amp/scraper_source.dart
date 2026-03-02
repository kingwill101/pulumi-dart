// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scraper_source_eks.dart';

class ScraperSource {
  /// Configuration block for an EKS cluster source. See `eks`.
  final pulumi.Input<ScraperSourceEks> eks;

  /// Creates a new [ScraperSource].
  /// [eks] Configuration block for an EKS cluster source. See `eks`.
  ScraperSource({
    required this.eks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eks': pulumi.Input.mapInputValue<ScraperSourceEks, Map<String, dynamic>>(eks, (value) => value.toMap()),
    };
  }

  factory ScraperSource.fromMap(Map<String, dynamic> map) {
    return ScraperSource(
      eks: (ScraperSourceEks.fromMap((map['eks'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

