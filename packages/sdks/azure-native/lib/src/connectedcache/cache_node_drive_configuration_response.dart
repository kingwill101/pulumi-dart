// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Drive configuration for cache node
class CacheNodeDriveConfigurationResponse {
  /// corresponding nginx cache number. Valid cache numbers are 1 - 20
  final pulumi.Input<int>? cacheNumber;
  /// full binding for corresponding nginx cache drive
  final pulumi.Input<String>? nginxMapping;
  /// physical path location of the folder used for caching content
  final pulumi.Input<String>? physicalPath;
  /// physical size of the drive used for caching content
  final pulumi.Input<int>? sizeInGb;

  /// Creates a new [CacheNodeDriveConfigurationResponse].
  /// [cacheNumber] corresponding nginx cache number. Valid cache numbers are 1 - 20
  /// [nginxMapping] full binding for corresponding nginx cache drive
  /// [physicalPath] physical path location of the folder used for caching content
  /// [sizeInGb] physical size of the drive used for caching content
  CacheNodeDriveConfigurationResponse({
    this.cacheNumber,
    this.nginxMapping,
    this.physicalPath,
    this.sizeInGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheNumber': ?cacheNumber,
      'nginxMapping': ?nginxMapping,
      'physicalPath': ?physicalPath,
      'sizeInGb': ?sizeInGb,
    };
  }

  factory CacheNodeDriveConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CacheNodeDriveConfigurationResponse(
      cacheNumber: (() { final guardedValue = map['cacheNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nginxMapping: (() { final guardedValue = map['nginxMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      physicalPath: (() { final guardedValue = map['physicalPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sizeInGb: (() { final guardedValue = map['sizeInGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

