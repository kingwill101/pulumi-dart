// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku.dart';

/// {@template pulumi_devspaces_controller_args_doc}
/// The set of arguments for Controller.
/// {@endtemplate}
/// {@macro pulumi_devspaces_controller_args_doc}
class ControllerArgs {
  /// Region where the Azure resource is located.
  final pulumi.Input<String>? location;
  /// Name of the resource.
  final pulumi.Input<String>? name;
  /// Resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Model representing SKU for Azure Dev Spaces Controller.
  final pulumi.Input<Sku> sku;
  /// Tags for the Azure resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Credentials of the target container host (base64).
  final pulumi.Input<String> targetContainerHostCredentialsBase64;
  /// Resource ID of the target container host
  final pulumi.Input<String> targetContainerHostResourceId;

  /// Creates a new [ControllerArgs].
  /// [location] Region where the Azure resource is located.
  /// [name] Name of the resource.
  /// [resourceGroupName] Resource group to which the resource belongs.
  /// [sku] Model representing SKU for Azure Dev Spaces Controller.
  /// [tags] Tags for the Azure resource.
  /// [targetContainerHostCredentialsBase64] Credentials of the target container host (base64).
  /// [targetContainerHostResourceId] Resource ID of the target container host
  ControllerArgs({
    String? location,
    String? name,
    required String resourceGroupName,
    required Sku sku,
    Map<String, String>? tags,
    required String targetContainerHostCredentialsBase64,
    required String targetContainerHostResourceId,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetContainerHostCredentialsBase64 = pulumi.Input.asInput<String>(targetContainerHostCredentialsBase64),
      targetContainerHostResourceId = pulumi.Input.asInput<String>(targetContainerHostResourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'targetContainerHostCredentialsBase64': targetContainerHostCredentialsBase64,
      'targetContainerHostResourceId': targetContainerHostResourceId,
    };
  }

  factory ControllerArgs.fromMap(Map<String, dynamic> map) {
    return ControllerArgs(
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sku: Sku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      targetContainerHostCredentialsBase64: map['targetContainerHostCredentialsBase64'] as String,
      targetContainerHostResourceId: map['targetContainerHostResourceId'] as String,
    );
  }
}

