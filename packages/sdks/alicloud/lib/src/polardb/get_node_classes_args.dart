// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_polardb_get_node_classes_get_node_classes_args_doc}
/// Arguments for getNodeClasses.
/// {@endtemplate}
/// {@macro pulumi_polardb_get_node_classes_get_node_classes_args_doc}
class GetNodeClassesArgs {
  /// The PolarDB node cluster series.
  final pulumi.Input<String>? category;
  /// The PolarDB node class type by the user.
  final pulumi.Input<String>? dbNodeClass;
  /// Database type. Options are `MySQL`, `PostgreSQL`, `Oracle`. If db_type is set, db_version also needs to be set.
  final pulumi.Input<String>? dbType;
  /// Database version required by the user. Value options can refer to the latest docs [detail info](https://www.alibabacloud.com/help/doc-detail/98169.htm) `DBVersion`. If db_version is set, db_type also needs to be set.
  final pulumi.Input<String>? dbVersion;
  /// File name where to save data source results (after running `pulumi up`).
  final pulumi.Input<String>? outputFile;
  /// Filter the results by charge type. Valid values: `PrePaid` and `PostPaid`.
  final pulumi.Input<String> payType;
  /// The Region to launch the PolarDB cluster.
  final pulumi.Input<String>? regionId;
  /// The Zone to launch the PolarDB cluster.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [GetNodeClassesArgs].
  /// [category] The PolarDB node cluster series.
  /// [dbNodeClass] The PolarDB node class type by the user.
  /// [dbType] Database type. Options are `MySQL`, `PostgreSQL`, `Oracle`. If db_type is set, db_version also needs to be set.
  /// [dbVersion] Database version required by the user. Value options can refer to the latest docs [detail info](https://www.alibabacloud.com/help/doc-detail/98169.htm) `DBVersion`. If db_version is set, db_type also needs to be set.
  /// [outputFile] File name where to save data source results (after running `pulumi up`).
  /// [payType] Filter the results by charge type. Valid values: `PrePaid` and `PostPaid`.
  /// [regionId] The Region to launch the PolarDB cluster.
  /// [zoneId] The Zone to launch the PolarDB cluster.
  GetNodeClassesArgs({
    this.category,
    this.dbNodeClass,
    this.dbType,
    this.dbVersion,
    this.outputFile,
    required this.payType,
    this.regionId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'dbNodeClass': ?dbNodeClass,
      'dbType': ?dbType,
      'dbVersion': ?dbVersion,
      'outputFile': ?outputFile,
      'payType': payType,
      'regionId': ?regionId,
      'zoneId': ?zoneId,
    };
  }

  factory GetNodeClassesArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeClassesArgs(
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbNodeClass: (() { final guardedValue = map['dbNodeClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbType: (() { final guardedValue = map['dbType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbVersion: (() { final guardedValue = map['dbVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      payType: pulumi.Input.fromValue(map['payType'] as String),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

