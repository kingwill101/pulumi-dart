// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databasefilesystem_service_linked_role_service_linked_role_args_doc}
/// The set of arguments for ServiceLinkedRole.
/// {@endtemplate}
/// {@macro pulumi_databasefilesystem_service_linked_role_service_linked_role_args_doc}
class ServiceLinkedRoleArgs {
  /// The product name for SLR. Dbfs can automatically create the following service-linked roles: `AliyunServiceRoleForDbfs`.
  final pulumi.Input<String> productName;

  /// Creates a new [ServiceLinkedRoleArgs].
  /// [productName] The product name for SLR. Dbfs can automatically create the following service-linked roles: `AliyunServiceRoleForDbfs`.
  const ServiceLinkedRoleArgs({
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

