// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_tag_by_api_args_doc}
/// Arguments for getTagByApi.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_tag_by_api_args_doc}
class GetTagByApiArgs {
  /// API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  final pulumi.Input<String> apiId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Tag identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> tagId;

  /// Creates a new [GetTagByApiArgs].
  /// [apiId] API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [tagId] Tag identifier. Must be unique in the current API Management service instance.
  GetTagByApiArgs({
    required pulumi.Output<String> apiId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
    required pulumi.Output<String> tagId,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      tagId = pulumi.Input.asInput<String>(tagId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'tagId': tagId,
    };
  }

  factory GetTagByApiArgs.fromMap(Map<String, dynamic> map) {
    return GetTagByApiArgs(
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      tagId: pulumi.Output.create<String>(map['tagId'] as String),
    );
  }
}

