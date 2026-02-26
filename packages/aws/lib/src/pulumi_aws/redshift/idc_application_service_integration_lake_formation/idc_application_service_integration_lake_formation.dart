// ignore_for_file: unused_element, unnecessary_cast

import '../idc_application_service_integration_lake_formation_lake_formation_query/idc_application_service_integration_lake_formation_lake_formation_query.dart';

class IdcApplicationServiceIntegrationLakeFormation {
  /// Lake formation scope.
  final IdcApplicationServiceIntegrationLakeFormationLakeFormationQuery?
      lakeFormationQuery;

  IdcApplicationServiceIntegrationLakeFormation({
    this.lakeFormationQuery,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final lakeFormationQueryValue = lakeFormationQuery;
    if (lakeFormationQueryValue != null) {
      map['lakeFormationQuery'] = lakeFormationQueryValue.toMap();
    }
    return map;
  }

  factory IdcApplicationServiceIntegrationLakeFormation.fromMap(
      Map<String, dynamic> map) {
    return IdcApplicationServiceIntegrationLakeFormation(
      lakeFormationQuery: map['lakeFormationQuery'] == null
          ? null
          : IdcApplicationServiceIntegrationLakeFormationLakeFormationQuery
              .fromMap(
                  (map['lakeFormationQuery'] as Map).cast<String, dynamic>()),
    );
  }
}
