// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Auth setting for public url.
class AcceleratorPublicSetting {
  /// The type of the auth setting.
  /// Expected value is 'Public'.
  final pulumi.Input<String> authType;
  /// Resource Id of CA certificate for https URL of Git repository.
  final pulumi.Input<String>? caCertResourceId;

  /// Creates a new [AcceleratorPublicSetting].
  /// [authType] The type of the auth setting.
  /// [caCertResourceId] Resource Id of CA certificate for https URL of Git repository.
  AcceleratorPublicSetting({
    required this.authType,
    this.caCertResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': authType,
      'caCertResourceId': ?caCertResourceId,
    };
  }

  factory AcceleratorPublicSetting.fromMap(Map<String, dynamic> map) {
    return AcceleratorPublicSetting(
      authType: (map['authType'] as String).input(),
      caCertResourceId: map['caCertResourceId'] == null ? null : (map['caCertResourceId']! as String).input(),
    );
  }
}

