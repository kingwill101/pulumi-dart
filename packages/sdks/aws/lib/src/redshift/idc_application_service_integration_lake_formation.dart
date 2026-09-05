// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'idc_application_service_integration_lake_formation_lake_formation_query.dart';

class IdcApplicationServiceIntegrationLakeFormation {
  /// Lake formation scope.
  final pulumi.Input<IdcApplicationServiceIntegrationLakeFormationLakeFormationQuery?>? lakeFormationQuery;

  /// Creates a new [IdcApplicationServiceIntegrationLakeFormation].
  /// [lakeFormationQuery] Lake formation scope.
  const IdcApplicationServiceIntegrationLakeFormation({
    this.lakeFormationQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lakeFormationQuery': ?pulumi.Input.mapOptionalInputValue<IdcApplicationServiceIntegrationLakeFormationLakeFormationQuery, Map<String, dynamic>>(lakeFormationQuery, (value) => value.toMap()),
    };
  }

  factory IdcApplicationServiceIntegrationLakeFormation.fromMap(Map<String, dynamic> map) {
    return IdcApplicationServiceIntegrationLakeFormation(
      lakeFormationQuery: (() { final guardedValue = map['lakeFormationQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdcApplicationServiceIntegrationLakeFormationLakeFormationQuery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
