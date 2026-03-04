// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_service_linked_role_service_linked_role_args_doc}
/// The set of arguments for ServiceLinkedRole.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_service_linked_role_service_linked_role_args_doc}
class ServiceLinkedRoleArgs {
  /// The suffix of the role name. Only a few service linked roles support custom suffixes. The role name (including its suffix) must be 1 to 64 characters in length and can contain letters, digits, periods (.), and hyphens (-). For example, if the suffix is Example, the role name is ServiceLinkedRoleName_Example.
  final pulumi.Input<String>? customSuffix;

  /// The description of the service linked role.  This parameter must be specified for only the service linked roles that support custom suffixes. Otherwise, the preset value is used and cannot be modified. The description must be 1 to 1,024 characters in length.
  final pulumi.Input<String>? description;

  /// The service name. For more information about the service name, see [Cloud services that support service linked roles](https://www.alibabacloud.com/help/en/doc-detail/160674.htm)
  final pulumi.Input<String> serviceName;

  /// Creates a new [ServiceLinkedRoleArgs].
  /// [customSuffix] The suffix of the role name. Only a few service linked roles support custom suffixes. The role name (including its suffix) must be 1 to 64 characters in length and can contain letters, digits, periods (.), and hyphens (-). For example, if the suffix is Example, the role name is ServiceLinkedRoleName_Example.
  /// [description] The description of the service linked role.  This parameter must be specified for only the service linked roles that support custom suffixes. Otherwise, the preset value is used and cannot be modified. The description must be 1 to 1,024 characters in length.
  /// [serviceName] The service name. For more information about the service name, see [Cloud services that support service linked roles](https://www.alibabacloud.com/help/en/doc-detail/160674.htm)
  ServiceLinkedRoleArgs({
    this.customSuffix,
    this.description,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customSuffix': ?customSuffix,
      'description': ?description,
      'serviceName': serviceName,
    };
  }

  factory ServiceLinkedRoleArgs.fromMap(Map<String, dynamic> map) {
    return ServiceLinkedRoleArgs(
      customSuffix: (() {
        final guardedValue = map['customSuffix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
