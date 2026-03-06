// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'idc_application_service_integration_redshift_connect.dart';

class IdcApplicationServiceIntegrationRedshift {
  /// Amazon Redshift connect service integration scope.
  final pulumi.Input<IdcApplicationServiceIntegrationRedshiftConnect>? connect;

  /// Creates a new [IdcApplicationServiceIntegrationRedshift].
  /// [connect] Amazon Redshift connect service integration scope.
  const IdcApplicationServiceIntegrationRedshift({
    this.connect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connect': ?pulumi.Input.mapOptionalInputValue<IdcApplicationServiceIntegrationRedshiftConnect, Map<String, dynamic>>(connect, (value) => value.toMap()),
    };
  }

  factory IdcApplicationServiceIntegrationRedshift.fromMap(Map<String, dynamic> map) {
    return IdcApplicationServiceIntegrationRedshift(
      connect: (() { final guardedValue = map['connect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdcApplicationServiceIntegrationRedshiftConnect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

