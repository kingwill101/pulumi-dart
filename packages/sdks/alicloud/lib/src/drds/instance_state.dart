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
    this.connectionString,
    this.description,
    this.instanceChargeType,
    this.instanceSeries,
    this.mysqlVersion,
    this.port,
    this.specification,
    this.vpcId,
    this.vswitchId,
    this.zoneId,
  });

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
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceChargeType: (() { final guardedValue = map['instanceChargeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceSeries: (() { final guardedValue = map['instanceSeries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mysqlVersion: (() { final guardedValue = map['mysqlVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      specification: (() { final guardedValue = map['specification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

