// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OptInResourceDataDataLocation {
  /// Identifier for the Data Catalog where the location is registered with Lake Formation. By default, it is the account ID of the caller.
  final pulumi.Input<String?>? catalogId;
  /// ARN that uniquely identifies the data location resource.
  final pulumi.Input<String> resourceArn;

  /// Creates a new [OptInResourceDataDataLocation].
  /// [catalogId] Identifier for the Data Catalog where the location is registered with Lake Formation. By default, it is the account ID of the caller.
  /// [resourceArn] ARN that uniquely identifies the data location resource.
  const OptInResourceDataDataLocation({
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
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArn: pulumi.Input.fromValue(map['resourceArn'] as String),
    );
  }
}
