// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionsRegion {
  /// The name of the region.
  final pulumi.Input<String> localName;

  /// The endpoint of the region.
  final pulumi.Input<String> regionEndpoint;

  /// The ID of the region.
  final pulumi.Input<String> regionId;

  /// Creates a new [GetRegionsRegion].
  /// [localName] The name of the region.
  /// [regionEndpoint] The endpoint of the region.
  /// [regionId] The ID of the region.
  GetRegionsRegion({
    required this.localName,
    required this.regionEndpoint,
    required this.regionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localName': localName,
      'regionEndpoint': regionEndpoint,
      'regionId': regionId,
    };
  }

  factory GetRegionsRegion.fromMap(Map<String, dynamic> map) {
    return GetRegionsRegion(
      localName: pulumi.Input.fromValue(map['localName'] as String),
      regionEndpoint: pulumi.Input.fromValue(map['regionEndpoint'] as String),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
    );
  }
}
