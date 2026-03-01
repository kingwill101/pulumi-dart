// ignore_for_file: unused_element, unnecessary_cast

import 'platform_image_purchase_plan_response.dart';

/// Describes an image source from [Azure Gallery Images](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages).
class ImageTemplatePlatformImageSourceResponse {
  /// Image version from the [Azure Gallery Images](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages). This readonly field differs from 'version', only if the value specified in 'version' field is 'latest'.
  final String exactVersion;
  /// Image offer from the [Azure Gallery Images](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages).
  final String? offer;
  /// Optional configuration of purchase plan for platform image.
  final PlatformImagePurchasePlanResponse? planInfo;
  /// Image Publisher in [Azure Gallery Images](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages).
  final String? publisher;
  /// Image sku from the [Azure Gallery Images](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages).
  final String? sku;
  /// Specifies the type of source image you want to start with.
  /// Expected value is 'PlatformImage'.
  final String type;
  /// Image version from the [Azure Gallery Images](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages). If 'latest' is specified here, the version is evaluated when the image build takes place, not when the template is submitted.
  final String? version;

  /// Creates a new [ImageTemplatePlatformImageSourceResponse].
  /// [exactVersion] Image version from the [Azure Gallery Images](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages). This readonly field differs from 'version', only if the value specified in 'version' field is 'latest'.
  /// [offer] Image offer from the [Azure Gallery Images](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages).
  /// [planInfo] Optional configuration of purchase plan for platform image.
  /// [publisher] Image Publisher in [Azure Gallery Images](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages).
  /// [sku] Image sku from the [Azure Gallery Images](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages).
  /// [type] Specifies the type of source image you want to start with.
  /// [version] Image version from the [Azure Gallery Images](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineimages). If 'latest' is specified here, the version is evaluated when the image build takes place, not when the template is submitted.
  ImageTemplatePlatformImageSourceResponse({
    required this.exactVersion,
    this.offer,
    this.planInfo,
    this.publisher,
    this.sku,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exactVersion': exactVersion,
      'offer': ?offer,
      'planInfo': ?planInfo == null ? null : planInfo!.toMap(),
      'publisher': ?publisher,
      'sku': ?sku,
      'type': type,
      'version': ?version,
    };
  }

  factory ImageTemplatePlatformImageSourceResponse.fromMap(Map<String, dynamic> map) {
    return ImageTemplatePlatformImageSourceResponse(
      exactVersion: map['exactVersion'] as String,
      offer: map['offer'] == null ? null : map['offer'] as String,
      planInfo: map['planInfo'] == null ? null : PlatformImagePurchasePlanResponse.fromMap((map['planInfo'] as Map).cast<String, dynamic>()),
      publisher: map['publisher'] == null ? null : map['publisher'] as String,
      sku: map['sku'] == null ? null : map['sku'] as String,
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

