// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_list_policy_fragment_references_args_doc}
/// Arguments for listPolicyFragmentReferences.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_list_policy_fragment_references_args_doc}
class ListPolicyFragmentReferencesArgs {
  /// A resource identifier.
  final pulumi.Input<String> id;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Number of records to skip.
  final pulumi.Input<int>? skip;
  /// Number of records to return.
  final pulumi.Input<int>? top;

  /// Creates a new [ListPolicyFragmentReferencesArgs].
  /// [id] A resource identifier.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [skip] Number of records to skip.
  /// [top] Number of records to return.
  ListPolicyFragmentReferencesArgs({
    required pulumi.Output<String> id,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
    pulumi.Output<int>? skip,
    pulumi.Output<int>? top,
  }) :
      id = pulumi.Input.asInput<String>(id),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      skip = pulumi.Input.asOptionalInput<int>(skip),
      top = pulumi.Input.asOptionalInput<int>(top);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'skip': ?skip,
      'top': ?top,
    };
  }

  factory ListPolicyFragmentReferencesArgs.fromMap(Map<String, dynamic> map) {
    return ListPolicyFragmentReferencesArgs(
      id: pulumi.Output.create<String>(map['id'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      skip: map['skip'] == null ? null : pulumi.Output.create<int>(map['skip'] as int),
      top: map['top'] == null ? null : pulumi.Output.create<int>(map['top'] as int),
    );
  }
}

