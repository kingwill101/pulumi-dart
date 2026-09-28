// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_identity_source_identity_center.dart';

class ApplicationIdentitySource {
  /// IAM Identity Center instance to use as the identity source. See `identityCenter` Block below.
  final pulumi.Input<ApplicationIdentitySourceIdentityCenter?>? identityCenter;

  /// Creates a new [ApplicationIdentitySource].
  /// [identityCenter] IAM Identity Center instance to use as the identity source. See `identityCenter` Block below.
  const ApplicationIdentitySource({
    this.identityCenter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityCenter': ?pulumi.Input.mapOptionalInputValue<ApplicationIdentitySourceIdentityCenter, Map<String, dynamic>>(identityCenter, (value) => value.toMap()),
    };
  }

  factory ApplicationIdentitySource.fromMap(Map<String, dynamic> map) {
    return ApplicationIdentitySource(
      identityCenter: (() { final guardedValue = map['identityCenter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationIdentitySourceIdentityCenter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
