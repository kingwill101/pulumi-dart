// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IdcApplicationServiceIntegrationLakeFormationLakeFormationQuery {
  /// Determines whether the query scope is enabled or disabled.
  final pulumi.Input<String> authorization;

  /// Creates a new [IdcApplicationServiceIntegrationLakeFormationLakeFormationQuery].
  /// [authorization] Determines whether the query scope is enabled or disabled.
  IdcApplicationServiceIntegrationLakeFormationLakeFormationQuery({
    required this.authorization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorization': authorization,
    };
  }

  factory IdcApplicationServiceIntegrationLakeFormationLakeFormationQuery.fromMap(Map<String, dynamic> map) {
    return IdcApplicationServiceIntegrationLakeFormationLakeFormationQuery(
      authorization: (map['authorization'] as String).input(),
    );
  }
}

