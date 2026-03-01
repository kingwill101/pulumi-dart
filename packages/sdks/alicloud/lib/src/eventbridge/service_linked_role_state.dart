// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceLinkedRole resources.
class ServiceLinkedRoleState {
  /// The name of the cloud service or the name of the service-linked role with which the cloud service is associated. For more information, see [How to use it](https://www.alibabacloud.com/help/en/eventbridge/developer-reference/api-eventbridge-2020-04-01-createservicelinkedroleforproduct).
  final pulumi.Input<String>? productName;

  /// Creates a new [ServiceLinkedRoleState].
  /// [productName] The name of the cloud service or the name of the service-linked role with which the cloud service is associated. For more information, see [How to use it](https://www.alibabacloud.com/help/en/eventbridge/developer-reference/api-eventbridge-2020-04-01-createservicelinkedroleforproduct).
  ServiceLinkedRoleState({
    pulumi.Output<String>? productName,
  }) :
      productName = pulumi.Input.asOptionalInput<String>(productName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productName': ?productName,
    };
  }

  factory ServiceLinkedRoleState.fromMap(Map<String, dynamic> map) {
    return ServiceLinkedRoleState(
      productName: map['productName'] == null ? null : pulumi.Output.create<String>(map['productName'] as String),
    );
  }
}

