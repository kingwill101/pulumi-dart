// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_drds_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_drds_instance_instance_args_doc}
class InstanceArgs {
  /// Description of the DRDS instance, This description can have a string of 2 to 256 characters.
  final pulumi.Input<String> description;
  /// Valid values are `PrePaid`, `PostPaid`, Default to `PostPaid`.
  final pulumi.Input<String>? instanceChargeType;
  /// The parameter of the instance series. **NOTE:**  `drds.sn1.4c8g`,`drds.sn1.8c16g`,`drds.sn1.16c32g`,`drds.sn1.32c64g` are no longer supported. Valid values:
  /// - `drds.sn2.4c16g` Starter Edition.
  /// - `drds.sn2.8c32g` Standard Edition.
  /// - `drds.sn2.16c64g` Enterprise Edition.
  final pulumi.Input<String> instanceSeries;
  /// The MySQL version supported by the instance, with the following range of values. `5`: Fully compatible with MySQL 5.x (default) `8`: Fully compatible with MySQL 8.0. This parameter takes effect when the primary instance is created, and the read-only instance has the same MySQL version as the primary instance by default.
  final pulumi.Input<int>? mysqlVersion;
  /// User-defined DRDS instance specification. Value range:
  /// - `drds.sn1.4c8g` for DRDS instance Starter version;
  /// - value range : `drds.sn1.4c8g.8c16g`, `drds.sn1.4c8g.16c32g`, `drds.sn1.4c8g.32c64g`, `drds.sn1.4c8g.64c128g`
  /// - `drds.sn1.8c16g` for DRDS instance Standard edition;
  /// - value range : `drds.sn1.8c16g.16c32g`, `drds.sn1.8c16g.32c64g`, `drds.sn1.8c16g.64c128g`
  /// - `drds.sn1.16c32g` for DRDS instance Enterprise Edition;
  /// - value range : `drds.sn1.16c32g.32c64g`, `drds.sn1.16c32g.64c128g`
  /// - `drds.sn1.32c64g` for DRDS instance Extreme Edition;
  /// - value range : `drds.sn1.32c64g.128c256g`
  final pulumi.Input<String> specification;
  /// The id of the VPC.
  final pulumi.Input<String>? vpcId;
  /// The VSwitch ID to launch in.
  final pulumi.Input<String> vswitchId;
  /// The Zone to launch the DRDS instance.
  final pulumi.Input<String> zoneId;

  /// Creates a new [InstanceArgs].
  /// [description] Description of the DRDS instance, This description can have a string of 2 to 256 characters.
  /// [instanceChargeType] Valid values are `PrePaid`, `PostPaid`, Default to `PostPaid`.
  /// [instanceSeries] The parameter of the instance series. **NOTE:**  `drds.sn1.4c8g`,`drds.sn1.8c16g`,`drds.sn1.16c32g`,`drds.sn1.32c64g` are no longer supported. Valid values:
  /// [mysqlVersion] The MySQL version supported by the instance, with the following range of values. `5`: Fully compatible with MySQL 5.x (default) `8`: Fully compatible with MySQL 8.0. This parameter takes effect when the primary instance is created, and the read-only instance has the same MySQL version as the primary instance by default.
  /// [specification] User-defined DRDS instance specification. Value range:
  /// [vpcId] The id of the VPC.
  /// [vswitchId] The VSwitch ID to launch in.
  /// [zoneId] The Zone to launch the DRDS instance.
  InstanceArgs({
    required String description,
    String? instanceChargeType,
    required String instanceSeries,
    int? mysqlVersion,
    required String specification,
    String? vpcId,
    required String vswitchId,
    required String zoneId,
  }) :
      description = pulumi.Input.asInput<String>(description),
      instanceChargeType = pulumi.Input.asOptionalInput<String>(instanceChargeType),
      instanceSeries = pulumi.Input.asInput<String>(instanceSeries),
      mysqlVersion = pulumi.Input.asOptionalInput<int>(mysqlVersion),
      specification = pulumi.Input.asInput<String>(specification),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asInput<String>(vswitchId),
      zoneId = pulumi.Input.asInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'instanceChargeType': ?instanceChargeType,
      'instanceSeries': instanceSeries,
      'mysqlVersion': ?mysqlVersion,
      'specification': specification,
      'vpcId': ?vpcId,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      description: map['description'] as String,
      instanceChargeType: map['instanceChargeType'] == null ? null : map['instanceChargeType'] as String,
      instanceSeries: map['instanceSeries'] as String,
      mysqlVersion: map['mysqlVersion'] == null ? null : map['mysqlVersion'] as int,
      specification: map['specification'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

