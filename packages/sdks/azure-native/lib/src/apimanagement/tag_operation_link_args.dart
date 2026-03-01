// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_tag_operation_link_args_doc}
/// The set of arguments for TagOperationLink.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_tag_operation_link_args_doc}
class TagOperationLinkArgs {
  /// Full resource Id of an API operation.
  final pulumi.Input<String> operationId;
  /// Tag-operation link identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? operationLinkId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Tag identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> tagId;

  /// Creates a new [TagOperationLinkArgs].
  /// [operationId] Full resource Id of an API operation.
  /// [operationLinkId] Tag-operation link identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [tagId] Tag identifier. Must be unique in the current API Management service instance.
  TagOperationLinkArgs({
    required pulumi.Output<String> operationId,
    pulumi.Output<String>? operationLinkId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
    required pulumi.Output<String> tagId,
  }) :
      operationId = pulumi.Input.asInput<String>(operationId),
      operationLinkId = pulumi.Input.asOptionalInput<String>(operationLinkId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      tagId = pulumi.Input.asInput<String>(tagId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationId': operationId,
      'operationLinkId': ?operationLinkId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'tagId': tagId,
    };
  }

  factory TagOperationLinkArgs.fromMap(Map<String, dynamic> map) {
    return TagOperationLinkArgs(
      operationId: pulumi.Output.create<String>(map['operationId'] as String),
      operationLinkId: map['operationLinkId'] == null ? null : pulumi.Output.create<String>(map['operationLinkId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      tagId: pulumi.Output.create<String>(map['tagId'] as String),
    );
  }
}

