// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cr_get_endpoint_acl_service_get_endpoint_acl_service_args_doc}
/// Arguments for getEndpointAclService.
/// {@endtemplate}
/// {@macro pulumi_cr_get_endpoint_acl_service_get_endpoint_acl_service_args_doc}
class GetEndpointAclServiceArgs {
  /// Whether to enable Acl Service, Setting the value to `true` to enable the acl service. Valid values: `true` and `false`.
  final pulumi.Input<bool> enable;
  /// The type of endpoint. Valid values: `internet`.
  final pulumi.Input<String> endpointType;
  /// The ID of the CR Instance.
  final pulumi.Input<String> instanceId;
  /// The ModuleName. Valid values: `Registry`.
  ///
  /// > **NOTE:** After You enable access over the Internet, the Classless Inter-Domain Routing (CIDR) block `127.0.0.1/32` is automatically added to the whitelist.
  ///
  /// > **NOTE:** You may want to allow all ECS instances to access the Container Registry Enterprise Edition instance over the Internet. To achieve this purpose, you can enable access over the Internet and delete all IP addresses from the whitelist for Internet access. After you perform the preceding operation, the Container Registry Enterprise Edition instance is completely exposed to the Internet and may be attacked.
  final pulumi.Input<String>? moduleName;

  /// Creates a new [GetEndpointAclServiceArgs].
  /// [enable] Whether to enable Acl Service, Setting the value to `true` to enable the acl service. Valid values: `true` and `false`.
  /// [endpointType] The type of endpoint. Valid values: `internet`.
  /// [instanceId] The ID of the CR Instance.
  /// [moduleName] The ModuleName. Valid values: `Registry`.
  GetEndpointAclServiceArgs({
    required pulumi.Output<bool> enable,
    required pulumi.Output<String> endpointType,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? moduleName,
  }) :
      enable = pulumi.Input.asInput<bool>(enable),
      endpointType = pulumi.Input.asInput<String>(endpointType),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      moduleName = pulumi.Input.asOptionalInput<String>(moduleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': enable,
      'endpointType': endpointType,
      'instanceId': instanceId,
      'moduleName': ?moduleName,
    };
  }

  factory GetEndpointAclServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetEndpointAclServiceArgs(
      enable: pulumi.Output.create<bool>(map['enable'] as bool),
      endpointType: pulumi.Output.create<String>(map['endpointType'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      moduleName: map['moduleName'] == null ? null : pulumi.Output.create<String>(map['moduleName'] as String),
    );
  }
}

