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
      expiredTime: map['expiredTime'] == null ? null : (map['expiredTime']! as int).input(),
      privateKey: map['privateKey'] == null ? null : (map['privateKey']! as String).input(),
      urlPath: map['urlPath'] == null ? null : (map['urlPath']! as String).input(),
    );
  }
}

