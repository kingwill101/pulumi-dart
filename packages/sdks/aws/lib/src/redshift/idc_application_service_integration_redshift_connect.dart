// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IdcApplicationServiceIntegrationRedshiftConnect {
  /// Determines whether the connect integration is enabled or disabled.
  final pulumi.Input<String> authorization;

  /// Creates a new [IdcApplicationServiceIntegrationRedshiftConnect].
  /// [authorization] Determines whether the connect integration is enabled or disabled.
  IdcApplicationServiceIntegrationRedshiftConnect({
    required this.authorization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'authorization': authorization};
  }

  factory IdcApplicationServiceIntegrationRedshiftConnect.fromMap(
    Map<String, dynamic> map,
  ) {
    return IdcApplicationServiceIntegrationRedshiftConnect(
      authorization: pulumi.Input.fromValue(map['authorization'] as String),
    );
  }
}
