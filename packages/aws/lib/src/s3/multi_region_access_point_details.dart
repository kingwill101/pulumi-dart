// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multi_region_access_point_details_public_access_block.dart';
import 'multi_region_access_point_details_region.dart';

class MultiRegionAccessPointDetails {
  final String name;
  final MultiRegionAccessPointDetailsPublicAccessBlock? publicAccessBlock;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final List<MultiRegionAccessPointDetailsRegion> regions;

  /// Creates a new [MultiRegionAccessPointDetails].
  /// [name] Required.
  /// [publicAccessBlock] Optional.
  /// [regions] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  MultiRegionAccessPointDetails({
    required this.name,
    this.publicAccessBlock,
    required this.regions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'publicAccessBlock': ?publicAccessBlock == null ? null : publicAccessBlock!.toMap(),
      'regions': pulumi.Input.encodeList<MultiRegionAccessPointDetailsRegion, Map<String, dynamic>>(regions, (value) => value.toMap()),
    };
  }

  factory MultiRegionAccessPointDetails.fromMap(Map<String, dynamic> map) {
    return MultiRegionAccessPointDetails(
      name: map['name'] as String,
      publicAccessBlock: map['publicAccessBlock'] == null ? null : MultiRegionAccessPointDetailsPublicAccessBlock.fromMap((map['publicAccessBlock'] as Map).cast<String, dynamic>()),
      regions: pulumi.Input.decodeList<MultiRegionAccessPointDetailsRegion>(map['regions'], (value) => MultiRegionAccessPointDetailsRegion.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

