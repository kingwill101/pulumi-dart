// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_get_class_details_get_class_details_args_doc}
/// Arguments for getClassDetails.
/// {@endtemplate}
/// {@macro pulumi_rds_get_class_details_get_class_details_args_doc}
class GetClassDetailsArgs {
  /// The code of the instance type.
  final pulumi.Input<String> classCode;
  /// The commodity code of the instance. Valid values:
  /// * **bards**: The instance is a pay-as-you-go primary instance. This value is available on the China site (aliyun.com).
  /// * **rds**: The instance is a subscription primary instance. This value is available on the China site (aliyun.com).
  /// * **rords**: The instance is a pay-as-you-go read-only instance. This value is available on the China site (aliyun.com).
  /// * **rds_rordspre_public_cn**: The instance is a subscription read-only instance. This value is available on the China site (aliyun.com).
  /// * **bards_intl**: The instance is a pay-as-you-go primary instance. This value is available on the International site (alibabacloud.com).
  /// * **rds_intl**: The instance is a subscription primary instance. This value is available on the International site (alibabacloud.com).
  /// * **rords_intl**: The instance is a pay-as-you-go read-only instance. This value is available on the International site (alibabacloud.com).
  /// * **rds_rordspre_public_intl**: The instance is a subscription read-only instance. This value is available on the International site (alibabacloud.com).
  final pulumi.Input<String> commodityCode;
  /// Database type. Value options: MySQL, SQLServer, PostgreSQL, MariaDB.
  final pulumi.Input<String> engine;
  /// Database version. Value options:
  /// - MySQL: [ 5.5、5.6、5.7、8.0 ]
  /// - SQLServer: [ 2008r2、08r2_ent_ha、2012、2012_ent_ha、2012_std_ha、2012_web、2014_std_ha、2016_ent_ha、2016_std_ha、2016_web、2017_std_ha、2017_ent、2019_std_ha、2019_ent ]
  /// - PostgreSQL: [ 10.0、11.0、12.0、13.0、14.0、15.0 ]
  /// - MariaDB: [ 10.3 ]
  final pulumi.Input<String> engineVersion;

  /// Creates a new [GetClassDetailsArgs].
  /// [classCode] The code of the instance type.
  /// [commodityCode] The commodity code of the instance. Valid values:
  /// [engine] Database type. Value options: MySQL, SQLServer, PostgreSQL, MariaDB.
  /// [engineVersion] Database version. Value options:
  GetClassDetailsArgs({
    required this.classCode,
    required this.commodityCode,
    required this.engine,
    required this.engineVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classCode': classCode,
      'commodityCode': commodityCode,
      'engine': engine,
      'engineVersion': engineVersion,
    };
  }

  factory GetClassDetailsArgs.fromMap(Map<String, dynamic> map) {
    return GetClassDetailsArgs(
      classCode: (map['classCode'] as String).input(),
      commodityCode: (map['commodityCode'] as String).input(),
      engine: (map['engine'] as String).input(),
      engineVersion: (map['engineVersion'] as String).input(),
    );
  }
}

