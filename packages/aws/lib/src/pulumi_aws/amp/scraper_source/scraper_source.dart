// ignore_for_file: unused_element, unnecessary_cast

import '../scraper_source_eks/scraper_source_eks.dart';

class ScraperSource {
  /// Configuration block for an EKS cluster source. See `eks`.
  final ScraperSourceEks eks;

  ScraperSource({
    required this.eks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['eks'] = eks.toMap();
    return map;
  }

  factory ScraperSource.fromMap(Map<String, dynamic> map) {
    return ScraperSource(
      eks:
          ScraperSourceEks.fromMap((map['eks'] as Map).cast<String, dynamic>()),
    );
  }
}
