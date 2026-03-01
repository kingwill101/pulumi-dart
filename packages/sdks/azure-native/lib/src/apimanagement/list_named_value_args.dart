// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_list_named_value_args_doc}
/// Arguments for listNamedValue.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_list_named_value_args_doc}
class ListNamedValueArgs {
  /// Identifier of the NamedValue.
  final pulumi.Input<String> namedValueId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ListNamedValueArgs].
  /// [namedValueId] Identifier of the NamedValue.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  ListNamedValueArgs({
    required pulumi.Output<String> namedValueId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      namedValueId = pulumi.Input.asInput<String>(namedValueId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namedValueId': namedValueId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory ListNamedValueArgs.fromMap(Map<String, dynamic> map) {
    return ListNamedValueArgs(
      namedValueId: pulumi.Output.create<String>(map['namedValueId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

