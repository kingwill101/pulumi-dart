// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AllFeatures {
  /// Expected value is 'AllFeatures'.
  final pulumi.Input<String> filterType;

  /// Creates a new [AllFeatures].
  /// [filterType] Expected value is 'AllFeatures'.
  AllFeatures({
    required this.filterType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterType': filterType,
    };
  }

  factory AllFeatures.fromMap(Map<String, dynamic> map) {
    return AllFeatures(
      filterType: (map['filterType'] as String).input(),
    );
  }
}

