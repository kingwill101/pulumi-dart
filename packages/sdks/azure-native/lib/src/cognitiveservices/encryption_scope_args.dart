// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_scope_properties.dart';

/// {@template pulumi_cognitiveservices_encryption_scope_args_doc}
/// The set of arguments for EncryptionScope.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_encryption_scope_args_doc}
class EncryptionScopeArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// The name of the encryptionScope associated with the Cognitive Services Account
  final pulumi.Input<String>? encryptionScopeName;
  /// Properties of Cognitive Services EncryptionScope.
  final pulumi.Input<EncryptionScopeProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EncryptionScopeArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [encryptionScopeName] The name of the encryptionScope associated with the Cognitive Services Account
  /// [properties] Properties of Cognitive Services EncryptionScope.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  EncryptionScopeArgs({
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? encryptionScopeName,
    pulumi.Output<EncryptionScopeProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      encryptionScopeName = pulumi.Input.asOptionalInput<String>(encryptionScopeName),
      properties = pulumi.Input.asOptionalInput<EncryptionScopeProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'encryptionScopeName': ?encryptionScopeName,
      'properties': ?pulumi.Input.mapOptionalInputValue<EncryptionScopeProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory EncryptionScopeArgs.fromMap(Map<String, dynamic> map) {
    return EncryptionScopeArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      encryptionScopeName: map['encryptionScopeName'] == null ? null : pulumi.Output.create<String>(map['encryptionScopeName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<EncryptionScopeProperties>(EncryptionScopeProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

