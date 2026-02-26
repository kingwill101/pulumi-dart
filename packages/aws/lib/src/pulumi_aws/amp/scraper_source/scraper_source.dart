// ignore_for_file: unused_element, unnecessary_cast

import '../scraper_source_eks/scraper_source_eks.dart';

class ScraperSource {
  /// Configuration block for an EKS cluster source. See <span pulumi-lang-nodejs="`eks`" pulumi-lang-dotnet="`Eks`" pulumi-lang-go="`eks`" pulumi-lang-python="`eks`" pulumi-lang-yaml="`eks`" pulumi-lang-java="`eks`">`eks`</span>.
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
