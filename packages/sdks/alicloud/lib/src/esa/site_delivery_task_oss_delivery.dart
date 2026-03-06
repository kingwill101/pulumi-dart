// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SiteDeliveryTaskOssDelivery {
  final pulumi.Input<String>? aliuid;
  final pulumi.Input<String>? bucketName;
  final pulumi.Input<String>? prefixPath;
  /// The region ID of the service.
  final pulumi.Input<String>? region;

  /// Creates a new [SiteDeliveryTaskOssDelivery].
  /// [aliuid] Optional.
  /// [bucketName] Optional.
  /// [prefixPath] Optional.
  /// [region] The region ID of the service.
  const SiteDeliveryTaskOssDelivery({
    this.aliuid,
    this.bucketName,
    this.prefixPath,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliuid': ?aliuid,
      'bucketName': ?bucketName,
      'prefixPath': ?prefixPath,
      'region': ?region,
    };
  }

  factory SiteDeliveryTaskOssDelivery.fromMap(Map<String, dynamic> map) {
    return SiteDeliveryTaskOssDelivery(
      aliuid: (() { final guardedValue = map['aliuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefixPath: (() { final guardedValue = map['prefixPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

