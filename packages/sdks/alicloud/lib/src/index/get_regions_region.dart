// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionsRegion {
  /// ID of the region.
  final pulumi.Input<String> id;
  /// Name of the region in the local language.
  final pulumi.Input<String> localName;
  final pulumi.Input<String> regionId;

  /// Creates a new [GetRegionsRegion].
  /// [id] ID of the region.
  /// [localName] Name of the region in the local language.
  /// [regionId] Required.
  GetRegionsRegion({
    required this.id,
    required this.localName,
    required this.regionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'localName': localName,
      'regionId': regionId,
    };
  }

  factory GetRegionsRegion.fromMap(Map<String, dynamic> map) {
    return GetRegionsRegion(
      id: (map['id'] as String).input(),
      localName: (map['localName'] as String).input(),
      regionId: (map['regionId'] as String).input(),
    );
  }
}

