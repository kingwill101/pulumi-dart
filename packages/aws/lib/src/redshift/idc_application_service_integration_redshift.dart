// ignore_for_file: unused_element, unnecessary_cast

import 'idc_application_service_integration_redshift_connect.dart';

class IdcApplicationServiceIntegrationRedshift {
  /// Amazon Redshift connect service integration scope.
  final IdcApplicationServiceIntegrationRedshiftConnect? connect;

  /// Creates a new [IdcApplicationServiceIntegrationRedshift].
  /// [connect] Amazon Redshift connect service integration scope.
  IdcApplicationServiceIntegrationRedshift({this.connect});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connect': ?connect == null ? null : connect!.toMap(),
    };
  }

  factory IdcApplicationServiceIntegrationRedshift.fromMap(
    Map<String, dynamic> map,
  ) {
    return IdcApplicationServiceIntegrationRedshift(
      connect: map['connect'] == null
          ? null
          : IdcApplicationServiceIntegrationRedshiftConnect.fromMap(
              (map['connect'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
