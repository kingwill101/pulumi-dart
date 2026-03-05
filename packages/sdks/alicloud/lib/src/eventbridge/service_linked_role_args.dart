// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventbridge_service_linked_role_service_linked_role_args_doc}
/// The set of arguments for ServiceLinkedRole.
/// {@endtemplate}
/// {@macro pulumi_eventbridge_service_linked_role_service_linked_role_args_doc}
class ServiceLinkedRoleArgs {
  /// The name of the cloud service or the name of the service-linked role with which the cloud service is associated. For more information, see [How to use it](https://www.alibabacloud.com/help/en/eventbridge/developer-reference/api-eventbridge-2020-04-01-createservicelinkedroleforproduct).
  final pulumi.Input<String> productName;

  /// Creates a new [ServiceLinkedRoleArgs].
  /// [productName] The name of the cloud service or the name of the service-linked role with which the cloud service is associated. For more information, see [How to use it](https://www.alibabacloud.com/help/en/eventbridge/developer-reference/api-eventbridge-2020-04-01-createservicelinkedroleforproduct).
  ServiceLinkedRoleArgs({
    required this.productName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productName': productName,
    };
  }

  factory ServiceLinkedRoleArgs.fromMap(Map<String, dynamic> map) {
    return ServiceLinkedRoleArgs(
      productName: pulumi.Input.fromValue(map['productName'] as String),
    );
  }
}

