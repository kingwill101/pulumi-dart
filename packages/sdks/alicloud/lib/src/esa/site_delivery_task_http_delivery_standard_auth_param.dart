// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SiteDeliveryTaskHttpDeliveryStandardAuthParam {
  final pulumi.Input<int>? expiredTime;
  final pulumi.Input<String>? privateKey;
  final pulumi.Input<String>? urlPath;

  /// Creates a new [SiteDeliveryTaskHttpDeliveryStandardAuthParam].
  /// [expiredTime] Optional.
  /// [privateKey] Optional.
  /// [urlPath] Optional.
  SiteDeliveryTaskHttpDeliveryStandardAuthParam({
    this.expiredTime,
    this.privateKey,
    this.urlPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiredTime': ?expiredTime,
      'privateKey': ?privateKey,
      'urlPath': ?urlPath,
    };
  }

  factory SiteDeliveryTaskHttpDeliveryStandardAuthParam.fromMap(Map<String, dynamic> map) {
    return SiteDeliveryTaskHttpDeliveryStandardAuthParam(
      expiredTime: (() { final guardedValue = map['expiredTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      urlPath: (() { final guardedValue = map['urlPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

