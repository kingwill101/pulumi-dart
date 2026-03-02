// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCrossRegionsRegion {
  /// ID of the region.
  final pulumi.Input<String> id;

  /// Creates a new [GetCrossRegionsRegion].
  /// [id] ID of the region.
  GetCrossRegionsRegion({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetCrossRegionsRegion.fromMap(Map<String, dynamic> map) {
    return GetCrossRegionsRegion(
      id: (map['id'] as String).input(),
    );
  }
}

