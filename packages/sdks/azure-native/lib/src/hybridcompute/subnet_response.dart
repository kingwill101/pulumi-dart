// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the subnet.
class SubnetResponse {
  /// Represents address prefix.
  final pulumi.Input<String?>? addressPrefix;

  /// Creates a new [SubnetResponse].
  /// [addressPrefix] Represents address prefix.
  const SubnetResponse({
    this.addressPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
    };
  }

  factory SubnetResponse.fromMap(Map<String, dynamic> map) {
    return SubnetResponse(
      addressPrefix: (() { final guardedValue = map['addressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
