// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceHttpConfigAuthorizationConfigAwsIamConfig {
  /// Signing Amazon Web Services Region for IAM authorization.
  final pulumi.Input<String>? signingRegion;
  /// Signing service name for IAM authorization.
  final pulumi.Input<String>? signingServiceName;

  /// Creates a new [DataSourceHttpConfigAuthorizationConfigAwsIamConfig].
  /// [signingRegion] Signing Amazon Web Services Region for IAM authorization.
  /// [signingServiceName] Signing service name for IAM authorization.
  DataSourceHttpConfigAuthorizationConfigAwsIamConfig({
    this.signingRegion,
    this.signingServiceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'signingRegion': ?signingRegion,
      'signingServiceName': ?signingServiceName,
    };
  }

  factory DataSourceHttpConfigAuthorizationConfigAwsIamConfig.fromMap(Map<String, dynamic> map) {
    return DataSourceHttpConfigAuthorizationConfigAwsIamConfig(
      signingRegion: (() { final guardedValue = map['signingRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signingServiceName: (() { final guardedValue = map['signingServiceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

