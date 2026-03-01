// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudcontrol_get_prices_get_prices_args_doc}
/// Arguments for getPrices.
/// {@endtemplate}
/// {@macro pulumi_cloudcontrol_get_prices_get_prices_args_doc}
class GetPricesArgs {
  /// This property represent the detailed configuration of the Resource which you are going to get price.  Give same content as DesireAttributes of the 'Resource' Resource when start Create operation. 'PaymentType' is necessary when in DesireAttributes.  Here is a probably example when you get the price of SLB LoadBalancer:```json{"LoadBalancerName": "cc-test","Bandwidth": 6,"PaymentType": "PayAsYouGo","AddressType": "internet","LoadBalancerSpec": "slb.s3.small","InternetChargeType": "paybybandwidth"} See `DesireAttributes` below.
  final pulumi.Input<Map<String, String>>? desireAttributes;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The product Code represents the product to be operated. Currently supported products and resources can be queried at the following link: [supported-services-and-resource-types](https://help.aliyun.com/zh/cloud-control-api/product-overview/supported-services-and-resource-types).
  final pulumi.Input<String> product;
  /// Resource Code, if there is a parent resource, split with `::`, such as VPC::VSwitch. The supported resource Code can be obtained from the following link: [supported-services-and-resource-types](https://help.aliyun.com/zh/cloud-control-api/product-overview/supported-services-and-resource-types).
  final pulumi.Input<String> resourceCode;

  /// Creates a new [GetPricesArgs].
  /// [desireAttributes] This property represent the detailed configuration of the Resource which you are going to get price.  Give same content as DesireAttributes of the 'Resource' Resource when start Create operation. 'PaymentType' is necessary when in DesireAttributes.  Here is a probably example when you get the price of SLB LoadBalancer:```json{"LoadBalancerName": "cc-test","Bandwidth": 6,"PaymentType": "PayAsYouGo","AddressType": "internet","LoadBalancerSpec": "slb.s3.small","InternetChargeType": "paybybandwidth"} See `DesireAttributes` below.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [product] The product Code represents the product to be operated. Currently supported products and resources can be queried at the following link: [supported-services-and-resource-types](https://help.aliyun.com/zh/cloud-control-api/product-overview/supported-services-and-resource-types).
  /// [resourceCode] Resource Code, if there is a parent resource, split with `::`, such as VPC::VSwitch. The supported resource Code can be obtained from the following link: [supported-services-and-resource-types](https://help.aliyun.com/zh/cloud-control-api/product-overview/supported-services-and-resource-types).
  GetPricesArgs({
    pulumi.Output<Map<String, String>>? desireAttributes,
    pulumi.Output<String>? outputFile,
    required pulumi.Output<String> product,
    required pulumi.Output<String> resourceCode,
  }) :
      desireAttributes = pulumi.Input.asOptionalInput<Map<String, String>>(desireAttributes),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      product = pulumi.Input.asInput<String>(product),
      resourceCode = pulumi.Input.asInput<String>(resourceCode);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desireAttributes': ?desireAttributes,
      'outputFile': ?outputFile,
      'product': product,
      'resourceCode': resourceCode,
    };
  }

  factory GetPricesArgs.fromMap(Map<String, dynamic> map) {
    return GetPricesArgs(
      desireAttributes: map['desireAttributes'] == null ? null : pulumi.Output.create<Map<String, String>>((map['desireAttributes'] as Map).cast<String, String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      product: pulumi.Output.create<String>(map['product'] as String),
      resourceCode: pulumi.Output.create<String>(map['resourceCode'] as String),
    );
  }
}

