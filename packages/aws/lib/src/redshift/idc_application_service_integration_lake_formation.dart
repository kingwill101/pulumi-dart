// ignore_for_file: unused_element, unnecessary_cast

import 'idc_application_service_integration_lake_formation_lake_formation_query.dart';

class IdcApplicationServiceIntegrationLakeFormation {
  /// Lake formation scope.
  final IdcApplicationServiceIntegrationLakeFormationLakeFormationQuery?
  lakeFormationQuery;

  /// Creates a new [IdcApplicationServiceIntegrationLakeFormation].
  /// [lakeFormationQuery] Lake formation scope.
  IdcApplicationServiceIntegrationLakeFormation({this.lakeFormationQuery});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lakeFormationQuery': ?lakeFormationQuery == null
          ? null
          : lakeFormationQuery!.toMap(),
    };
  }

  factory IdcApplicationServiceIntegrationLakeFormation.fromMap(
    Map<String, dynamic> map,
  ) {
    return IdcApplicationServiceIntegrationLakeFormation(
      lakeFormationQuery: map['lakeFormationQuery'] == null
          ? null
          : IdcApplicationServiceIntegrationLakeFormationLakeFormationQuery.fromMap(
              (map['lakeFormationQuery'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
