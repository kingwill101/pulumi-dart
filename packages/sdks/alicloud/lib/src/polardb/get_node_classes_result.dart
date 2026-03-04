// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_node_classes_class.dart';

/// Result data returned by getNodeClasses.
class GetNodeClassesResult {
  final String? category;

  /// A list of PolarDB node classes. Each element contains the following attributes:
  final List<GetNodeClassesClass> classes;

  /// PolarDB node available class.
  final String? dbNodeClass;
  final String? dbType;
  final String? dbVersion;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? outputFile;
  final String payType;
  final String? regionId;

  /// The Zone to launch the PolarDB cluster.
  final String? zoneId;

  /// Creates a new [GetNodeClassesResult].
  /// [category] Optional.
  /// [classes] A list of PolarDB node classes. Each element contains the following attributes:
  /// [dbNodeClass] PolarDB node available class.
  /// [dbType] Optional.
  /// [dbVersion] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [outputFile] Optional.
  /// [payType] Required.
  /// [regionId] Optional.
  /// [zoneId] The Zone to launch the PolarDB cluster.
  GetNodeClassesResult({
    this.category,
    required this.classes,
    this.dbNodeClass,
    this.dbType,
    this.dbVersion,
    required this.id,
    this.outputFile,
    required this.payType,
    this.regionId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'classes':
          pulumi.Input.encodeList<GetNodeClassesClass, Map<String, dynamic>>(
            classes,
            (value) => value.toMap(),
          ),
      'dbNodeClass': ?dbNodeClass,
      'dbType': ?dbType,
      'dbVersion': ?dbVersion,
      'id': id,
      'outputFile': ?outputFile,
      'payType': payType,
      'regionId': ?regionId,
      'zoneId': ?zoneId,
    };
  }

  factory GetNodeClassesResult.fromMap(Map<String, dynamic> map) {
    return GetNodeClassesResult(
      category: (() {
        final guardedValue = map['category'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      classes: pulumi.Input.decodeList<GetNodeClassesClass>(
        map['classes']!,
        (value) =>
            GetNodeClassesClass.fromMap((value as Map).cast<String, dynamic>()),
      ),
      dbNodeClass: (() {
        final guardedValue = map['dbNodeClass'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      dbType: (() {
        final guardedValue = map['dbType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      dbVersion: (() {
        final guardedValue = map['dbVersion'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      payType: map['payType'] as String,
      regionId: (() {
        final guardedValue = map['regionId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      zoneId: (() {
        final guardedValue = map['zoneId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
