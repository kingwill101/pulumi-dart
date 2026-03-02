// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OptInResourceDataDataLocation {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final pulumi.Input<String>? catalogId;
  /// ARN that uniquely identifies the data location resource.
  final pulumi.Input<String> resourceArn;

  /// Creates a new [OptInResourceDataDataLocation].
  /// [catalogId] Identifier for the Data Catalog. By default, it is the account ID of the caller.
  /// [resourceArn] ARN that uniquely identifies the data location resource.
  OptInResourceDataDataLocation({
    this.catalogId,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'resourceArn': resourceArn,
    };
  }

  factory OptInResourceDataDataLocation.fromMap(Map<String, dynamic> map) {
    return OptInResourceDataDataLocation(
      catalogId: map['catalogId'] == null ? null : (map['catalogId'] as String).input(),
      resourceArn: (map['resourceArn'] as String).input(),
    );
  }
}

