// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Resource resources.
class ResourceState {
  /// Resource attributes specified when a user creates or updates a resource.
  final pulumi.Input<String>? desireAttributes;
  /// The product Code represents the product to be operated. Currently supported products and resources can be queried at the following link: [supported-services-and-resource-types](https://help.aliyun.com/zh/cloud-control-api/product-overview/supported-services-and-resource-types).
  final pulumi.Input<String>? product;
  /// The collection of properties for the resource.
  final pulumi.Input<String>? resourceAttributes;
  /// Resource Code, if there is a parent resource, split with `::`, such as VPC::VSwitch. The supported resource Code can be obtained from the following link: [supported-services-and-resource-types](https://help.aliyun.com/zh/cloud-control-api/product-overview/supported-services-and-resource-types).
  final pulumi.Input<String>? resourceCode;
  /// If there is a parent resource, you need to enter the id of the parent resource, for example, in the VPC::VSwtich resource, you need to enter the id of the VPC: vpc-dexadfe3r4ad. If there are more than one level of parent resources, you need to use `:` to split.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [ResourceState].
  /// [desireAttributes] Resource attributes specified when a user creates or updates a resource.
  /// [product] The product Code represents the product to be operated. Currently supported products and resources can be queried at the following link: [supported-services-and-resource-types](https://help.aliyun.com/zh/cloud-control-api/product-overview/supported-services-and-resource-types).
  /// [resourceAttributes] The collection of properties for the resource.
  /// [resourceCode] Resource Code, if there is a parent resource, split with `::`, such as VPC::VSwitch. The supported resource Code can be obtained from the following link: [supported-services-and-resource-types](https://help.aliyun.com/zh/cloud-control-api/product-overview/supported-services-and-resource-types).
  /// [resourceId] If there is a parent resource, you need to enter the id of the parent resource, for example, in the VPC::VSwtich resource, you need to enter the id of the VPC: vpc-dexadfe3r4ad. If there are more than one level of parent resources, you need to use `:` to split.
  ResourceState({
    pulumi.Output<String>? desireAttributes,
    pulumi.Output<String>? product,
    pulumi.Output<String>? resourceAttributes,
    pulumi.Output<String>? resourceCode,
    pulumi.Output<String>? resourceId,
  }) :
      desireAttributes = pulumi.Input.asOptionalInput<String>(desireAttributes),
      product = pulumi.Input.asOptionalInput<String>(product),
      resourceAttributes = pulumi.Input.asOptionalInput<String>(resourceAttributes),
      resourceCode = pulumi.Input.asOptionalInput<String>(resourceCode),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desireAttributes': ?desireAttributes,
      'product': ?product,
      'resourceAttributes': ?resourceAttributes,
      'resourceCode': ?resourceCode,
      'resourceId': ?resourceId,
    };
  }

  factory ResourceState.fromMap(Map<String, dynamic> map) {
    return ResourceState(
      desireAttributes: map['desireAttributes'] == null ? null : pulumi.Output.create<String>(map['desireAttributes'] as String),
      product: map['product'] == null ? null : pulumi.Output.create<String>(map['product'] as String),
      resourceAttributes: map['resourceAttributes'] == null ? null : pulumi.Output.create<String>(map['resourceAttributes'] as String),
      resourceCode: map['resourceCode'] == null ? null : pulumi.Output.create<String>(map['resourceCode'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
    );
  }
}

