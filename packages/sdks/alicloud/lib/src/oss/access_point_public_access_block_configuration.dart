// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPointPublicAccessBlockConfiguration {
  /// Block public access enabled for access point
  final pulumi.Input<bool>? blockPublicAccess;

  /// Creates a new [AccessPointPublicAccessBlockConfiguration].
  /// [blockPublicAccess] Block public access enabled for access point
  AccessPointPublicAccessBlockConfiguration({
    this.blockPublicAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockPublicAccess': ?blockPublicAccess,
    };
  }

  factory AccessPointPublicAccessBlockConfiguration.fromMap(Map<String, dynamic> map) {
    return AccessPointPublicAccessBlockConfiguration(
      blockPublicAccess: (() { final guardedValue = map['blockPublicAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

