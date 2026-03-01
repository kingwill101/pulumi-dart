// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// (Available since v1.196.0) The connection string of the DRDS instance.
  final pulumi.Input<String>? connectionString;
  /// Description of the DRDS instance, This description can have a string of 2 to 256 characters.
  final pulumi.Input<String>? description;
  /// Valid values are `PrePaid`, `PostPaid`, Default to `PostPaid`.
  final pulumi.Input<String>? instanceChargeType;
  /// The parameter of the instance series. **NOTE:**  `drds.sn1.4c8g`,`drds.sn1.8c16g`,`drds.sn1.16c32g`,`drds.sn1.32c64g` are no longer supported. Valid values:
  /// - `drds.sn2.4c16g` Starter Edition.
  /// - `drds.sn2.8c32g` Standard Edition.
  /// - `drds.sn2.16c64g` Enterprise Edition.
  final pulumi.Input<String>? instanceSeries;
  /// The MySQL version supported by the instance, with the following range of values. `5`: Fully compatible with MySQL 5.x (default) `8`: Fully compatible with MySQL 8.0. This parameter takes effect when the primary instance is created, and the read-only instance has the same MySQL version as the primary instance by default.
  final pulumi.Input<int>? mysqlVersion;
  /// (Available since v1.196.0) The connection port of the DRDS instance.
  final pulumi.Input<String>? port;
  /// User-defined DRDS instance specification. Value range:
  /// - `drds.sn1.4c8g` for DRDS instance Starter version;
  /// - value range : `drds.sn1.4c8g.8c16g`, `drds.sn1.4c8g.16c32g`, `drds.sn1.4c8g.32c64g`, `drds.sn1.4c8g.64c128g`
  /// - `drds.sn1.8c16g` for DRDS instance Standard edition;
  /// - value range : `drds.sn1.8c16g.16c32g`, `drds.sn1.8c16g.32c64g`, `drds.sn1.8c16g.64c128g`
  /// - `drds.sn1.16c32g` for DRDS instance Enterprise Edition;
  /// - value range : `drds.sn1.16c32g.32c64g`, `drds.sn1.16c32g.64c128g`
  /// - `drds.sn1.32c64g` for DRDS instance Extreme Edition;
  /// - value range : `drds.sn1.32c64g.128c256g`
  final pulumi.Input<String>? specification;
  /// The id of the VPC.
  final pulumi.Input<String>? vpcId;
  /// The VSwitch ID to launch in.
  final pulumi.Input<String>? vswitchId;
  /// The Zone to launch the DRDS instance.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [InstanceState].
  /// [connectionString] (Available since v1.196.0) The connection string of the DRDS instance.
  /// [description] Description of the DRDS instance, This description can have a string of 2 to 256 characters.
  /// [instanceChargeType] Valid values are `PrePaid`, `PostPaid`, Default to `PostPaid`.
  /// [instanceSeries] The parameter of the instance series. **NOTE:**  `drds.sn1.4c8g`,`drds.sn1.8c16g`,`drds.sn1.16c32g`,`drds.sn1.32c64g` are no longer supported. Valid values:
  /// [mysqlVersion] The MySQL version supported by the instance, with the following range of values. `5`: Fully compatible with MySQL 5.x (default) `8`: Fully compatible with MySQL 8.0. This parameter takes effect when the primary instance is created, and the read-only instance has the same MySQL version as the primary instance by default.
  /// [port] (Available since v1.196.0) The connection port of the DRDS instance.
  /// [specification] User-defined DRDS instance specification. Value range:
  /// [vpcId] The id of the VPC.
  /// [vswitchId] The VSwitch ID to launch in.
  /// [zoneId] The Zone to launch the DRDS instance.
  InstanceState({
    pulumi.Output<String>? connectionString,
    pulumi.Output<String>? description,
    pulumi.Output<String>? instanceChargeType,
    pulumi.Output<String>? instanceSeries,
    pulumi.Output<int>? mysqlVersion,
    pulumi.Output<String>? port,
    pulumi.Output<String>? specification,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
    pulumi.Output<String>? zoneId,
  }) :
      connectionString = pulumi.Input.asOptionalInput<String>(connectionString),
      description = pulumi.Input.asOptionalInput<String>(description),
      instanceChargeType = pulumi.Input.asOptionalInput<String>(instanceChargeType),
      instanceSeries = pulumi.Input.asOptionalInput<String>(instanceSeries),
      mysqlVersion = pulumi.Input.asOptionalInput<int>(mysqlVersion),
      port = pulumi.Input.asOptionalInput<String>(port),
      specification = pulumi.Input.asOptionalInput<String>(specification),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
      'description': ?description,
      'instanceChargeType': ?instanceChargeType,
      'instanceSeries': ?instanceSeries,
      'mysqlVersion': ?mysqlVersion,
      'port': ?port,
      'specification': ?specification,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      connectionString: map['connectionString'] == null ? null : pulumi.Output.create<String>(map['connectionString'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      instanceChargeType: map['instanceChargeType'] == null ? null : pulumi.Output.create<String>(map['instanceChargeType'] as String),
      instanceSeries: map['instanceSeries'] == null ? null : pulumi.Output.create<String>(map['instanceSeries'] as String),
      mysqlVersion: map['mysqlVersion'] == null ? null : pulumi.Output.create<int>(map['mysqlVersion'] as int),
      port: map['port'] == null ? null : pulumi.Output.create<String>(map['port'] as String),
      specification: map['specification'] == null ? null : pulumi.Output.create<String>(map['specification'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

