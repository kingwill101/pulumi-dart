// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_tag_by_operation_args_doc}
/// The set of arguments for TagByOperation.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_tag_by_operation_args_doc}
class TagByOperationArgs {
  /// API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  final pulumi.Input<String> apiId;
  /// Operation identifier within an API. Must be unique in the current API Management service instance.
  final pulumi.Input<String> operationId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Tag identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? tagId;

  /// Creates a new [TagByOperationArgs].
  /// [apiId] API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  /// [operationId] Operation identifier within an API. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [tagId] Tag identifier. Must be unique in the current API Management service instance.
  TagByOperationArgs({
    required this.apiId,
    required this.operationId,
    required this.resourceGroupName,
    required this.serviceName,
    this.tagId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'operationId': operationId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'tagId': ?tagId,
    };
  }

  factory TagByOperationArgs.fromMap(Map<String, dynamic> map) {
    return TagByOperationArgs(
      apiId: (map['apiId'] as String).input(),
      operationId: (map['operationId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      tagId: map['tagId'] == null ? null : (map['tagId'] as String).input(),
    );
  }
}

