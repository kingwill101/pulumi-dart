// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutonomousDatabaseTransportableTablespace {
  /// URL of the transportable tablespace bundle.
  final pulumi.Input<String?>? ttsBundleUrl;

  /// Creates a new [AutonomousDatabaseTransportableTablespace].
  /// [ttsBundleUrl] URL of the transportable tablespace bundle.
  const AutonomousDatabaseTransportableTablespace({
    this.ttsBundleUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ttsBundleUrl': ?ttsBundleUrl,
    };
  }

  factory AutonomousDatabaseTransportableTablespace.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseTransportableTablespace(
      ttsBundleUrl: (() { final guardedValue = map['ttsBundleUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
