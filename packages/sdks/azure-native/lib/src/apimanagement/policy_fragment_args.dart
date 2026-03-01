// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_policy_fragment_args_doc}
/// The set of arguments for PolicyFragment.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_policy_fragment_args_doc}
class PolicyFragmentArgs {
  /// Policy fragment description.
  final pulumi.Input<String>? description;
  /// Format of the policy fragment content.
  final pulumi.Input<String>? format;
  /// A resource identifier.
  final pulumi.Input<String>? id;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Contents of the policy fragment.
  final pulumi.Input<String> value;

  /// Creates a new [PolicyFragmentArgs].
  /// [description] Policy fragment description.
  /// [format] Format of the policy fragment content.
  /// [id] A resource identifier.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [value] Contents of the policy fragment.
  PolicyFragmentArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? format,
    pulumi.Output<String>? id,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
    required pulumi.Output<String> value,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      format = pulumi.Input.asOptionalInput<String>(format),
      id = pulumi.Input.asOptionalInput<String>(id),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      value = pulumi.Input.asInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'format': ?format,
      'id': ?id,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'value': value,
    };
  }

  factory PolicyFragmentArgs.fromMap(Map<String, dynamic> map) {
    return PolicyFragmentArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      format: map['format'] == null ? null : pulumi.Output.create<String>(map['format'] as String),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      value: pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

