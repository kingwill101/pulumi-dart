// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_client_application_product_link_args_doc}
/// Arguments for getClientApplicationProductLink.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_client_application_product_link_args_doc}
class GetClientApplicationProductLinkArgs {
  /// Client Application identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> clientApplicationId;
  /// Client Application Product Link identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> clientApplicationProductLinkId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetClientApplicationProductLinkArgs].
  /// [clientApplicationId] Client Application identifier. Must be unique in the current API Management service instance.
  /// [clientApplicationProductLinkId] Client Application Product Link identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  GetClientApplicationProductLinkArgs({
    required pulumi.Output<String> clientApplicationId,
    required pulumi.Output<String> clientApplicationProductLinkId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      clientApplicationId = pulumi.Input.asInput<String>(clientApplicationId),
      clientApplicationProductLinkId = pulumi.Input.asInput<String>(clientApplicationProductLinkId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientApplicationId': clientApplicationId,
      'clientApplicationProductLinkId': clientApplicationProductLinkId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetClientApplicationProductLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetClientApplicationProductLinkArgs(
      clientApplicationId: pulumi.Output.create<String>(map['clientApplicationId'] as String),
      clientApplicationProductLinkId: pulumi.Output.create<String>(map['clientApplicationProductLinkId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

