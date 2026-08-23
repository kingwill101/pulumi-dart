// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scraper_source_eks.dart';
import 'scraper_source_vpc.dart';

class ScraperSource {
  /// Configuration block for an EKS cluster source. See `eks` Block for details.
  final pulumi.Input<ScraperSourceEks>? eks;
  /// Configuration block for a VPC source. See `vpc` Block for details.
  ///
  /// &gt; **NOTE:** Either `eks` or `vpc` must be specified, but not both.
  final pulumi.Input<ScraperSourceVpc>? vpc;

  /// Creates a new [ScraperSource].
  /// [eks] Configuration block for an EKS cluster source. See `eks` Block for details.
  /// [vpc] Configuration block for a VPC source. See `vpc` Block for details.
  const ScraperSource({
    this.eks,
    this.vpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eks': ?pulumi.Input.mapOptionalInputValue<ScraperSourceEks, Map<String, dynamic>>(eks, (value) => value.toMap()),
      'vpc': ?pulumi.Input.mapOptionalInputValue<ScraperSourceVpc, Map<String, dynamic>>(vpc, (value) => value.toMap()),
    };
  }

  factory ScraperSource.fromMap(Map<String, dynamic> map) {
    return ScraperSource(
      eks: (() { final guardedValue = map['eks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScraperSourceEks.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpc: (() { final guardedValue = map['vpc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScraperSourceVpc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
