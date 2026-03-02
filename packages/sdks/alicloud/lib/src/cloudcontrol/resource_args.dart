// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudcontrol_resource_resource_args_doc}
/// The set of arguments for Resource.
/// {@endtemplate}
/// {@macro pulumi_cloudcontrol_resource_resource_args_doc}
class ResourceArgs {
  /// Resource attributes specified when a user creates or updates a resource.
  final pulumi.Input<String>? desireAttributes;
  /// The product Code represents the product to be operated. Currently supported products and resources can be queried at the following link: [supported-services-and-resource-types](https://help.aliyun.com/zh/cloud-control-api/product-overview/supported-services-and-resource-types).
  final pulumi.Input<String> product;
  /// Resource Code, if there is a parent resource, split with `::`, such as VPC::VSwitch. The supported resource Code can be obtained from the following link: [supported-services-and-resource-types](https://help.aliyun.com/zh/cloud-control-api/product-overview/supported-services-and-resource-types).
  final pulumi.Input<String> resourceCode;
  /// If there is a parent resource, you need to enter the id of the parent resource, for example, in the VPC::VSwtich resource, you need to enter the id of the VPC: vpc-dexadfe3r4ad. If there are more than one level of parent resources, you need to use `:` to split.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [ResourceArgs].
  /// [desireAttributes] Resource attributes specified when a user creates or updates a resource.
  /// [product] The product Code represents the product to be operated. Currently supported products and resources can be queried at the following link: [supported-services-and-resource-types](https://help.aliyun.com/zh/cloud-control-api/product-overview/supported-services-and-resource-types).
  /// [resourceCode] Resource Code, if there is a parent resource, split with `::`, such as VPC::VSwitch. The supported resource Code can be obtained from the following link: [supported-services-and-resource-types](https://help.aliyun.com/zh/cloud-control-api/product-overview/supported-services-and-resource-types).
  /// [resourceId] If there is a parent resource, you need to enter the id of the parent resource, for example, in the VPC::VSwtich resource, you need to enter the id of the VPC: vpc-dexadfe3r4ad. If there are more than one level of parent resources, you need to use `:` to split.
  ResourceArgs({
    this.desireAttributes,
    required this.product,
    required this.resourceCode,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desireAttributes': ?desireAttributes,
      'product': product,
      'resourceCode': resourceCode,
      'resourceId': ?resourceId,
    };
  }

  factory ResourceArgs.fromMap(Map<String, dynamic> map) {
    return ResourceArgs(
      desireAttributes: map['desireAttributes'] == null ? null : (map['desireAttributes'] as String).input(),
      product: (map['product'] as String).input(),
      resourceCode: (map['resourceCode'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
    );
  }
}

