// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multi_region_access_point_details_public_access_block.dart';
import 'multi_region_access_point_details_region.dart';

class MultiRegionAccessPointDetails {
  /// Name of the Multi-Region Access Point.
  final pulumi.Input<String> name;
  /// Configuration block to manage the `PublicAccessBlock` configuration that you want to apply to this Multi-Region Access Point. You can enable the configuration options in any combination. See `publicAccessBlock` Block below.
  final pulumi.Input<MultiRegionAccessPointDetailsPublicAccessBlock>? publicAccessBlock;
  /// Region configuration block to specify the bucket associated with the Multi-Region Access Point. See `region` Block below.
  final pulumi.Input<List<MultiRegionAccessPointDetailsRegion>> regions;

  /// Creates a new [MultiRegionAccessPointDetails].
  /// [name] Name of the Multi-Region Access Point.
  /// [publicAccessBlock] Configuration block to manage the `PublicAccessBlock` configuration that you want to apply to this Multi-Region Access Point. You can enable the configuration options in any combination. See `publicAccessBlock` Block below.
  /// [regions] Region configuration block to specify the bucket associated with the Multi-Region Access Point. See `region` Block below.
  const MultiRegionAccessPointDetails({
    required this.name,
    this.publicAccessBlock,
    required this.regions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'publicAccessBlock': ?pulumi.Input.mapOptionalInputValue<MultiRegionAccessPointDetailsPublicAccessBlock, Map<String, dynamic>>(publicAccessBlock, (value) => value.toMap()),
      'regions': pulumi.Input.mapInputValue<List<MultiRegionAccessPointDetailsRegion>, List<Map<String, dynamic>>>(regions, (value) => pulumi.Input.encodeList<MultiRegionAccessPointDetailsRegion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MultiRegionAccessPointDetails.fromMap(Map<String, dynamic> map) {
    return MultiRegionAccessPointDetails(
      name: pulumi.Input.fromValue(map['name'] as String),
      publicAccessBlock: (() { final guardedValue = map['publicAccessBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MultiRegionAccessPointDetailsPublicAccessBlock.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regions: pulumi.Input.fromValue(pulumi.Input.decodeList<MultiRegionAccessPointDetailsRegion>(map['regions']!, (value) => MultiRegionAccessPointDetailsRegion.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
