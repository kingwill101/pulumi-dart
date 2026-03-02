// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_keys.dart';

/// Category:= CustomKeys
/// AuthType:= CustomKeys (as type discriminator)
/// Credentials:= {CustomKeys} as CustomKeys
/// Target:= {any value}
/// Use Metadata property bag for ApiVersion and other metadata fields
class CustomKeysConnectionProperties {
  /// Authentication type of the connection target
  /// Expected value is 'CustomKeys'.
  final pulumi.Input<String> authType;
  /// Category of the connection
  final pulumi.Input<String>? category;
  /// Custom Keys credential object
  final pulumi.Input<CustomKeys>? credentials;
  final pulumi.Input<String>? error;
  final pulumi.Input<String>? expiryTime;
  final pulumi.Input<bool>? isSharedToAll;
  /// Store user metadata for this connection
  final pulumi.Input<Map<String, String>>? metadata;
  final pulumi.Input<String>? peRequirement;
  final pulumi.Input<String>? peStatus;
  final pulumi.Input<List<String>>? sharedUserList;
  final pulumi.Input<String>? target;
  final pulumi.Input<bool>? useWorkspaceManagedIdentity;

  /// Creates a new [CustomKeysConnectionProperties].
  /// [authType] Authentication type of the connection target
  /// [category] Category of the connection
  /// [credentials] Custom Keys credential object
  /// [error] Optional.
  /// [expiryTime] Optional.
  /// [isSharedToAll] Optional.
  /// [metadata] Store user metadata for this connection
  /// [peRequirement] Optional.
  /// [peStatus] Optional.
  /// [sharedUserList] Optional.
  /// [target] Optional.
  /// [useWorkspaceManagedIdentity] Optional.
  CustomKeysConnectionProperties({
    required this.authType,
    this.category,
    this.credentials,
    this.error,
    this.expiryTime,
    this.isSharedToAll,
    this.metadata,
    this.peRequirement,
    this.peStatus,
    this.sharedUserList,
    this.target,
    this.useWorkspaceManagedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': authType,
      'category': ?category,
      'credentials': ?pulumi.Input.mapOptionalInputValue<CustomKeys, Map<String, dynamic>>(credentials, (value) => value.toMap()),
      'error': ?error,
      'expiryTime': ?expiryTime,
      'isSharedToAll': ?isSharedToAll,
      'metadata': ?metadata,
      'peRequirement': ?peRequirement,
      'peStatus': ?peStatus,
      'sharedUserList': ?sharedUserList,
      'target': ?target,
      'useWorkspaceManagedIdentity': ?useWorkspaceManagedIdentity,
    };
  }

  factory CustomKeysConnectionProperties.fromMap(Map<String, dynamic> map) {
    return CustomKeysConnectionProperties(
      authType: (map['authType'] as String).input(),
      category: map['category'] == null ? null : (map['category'] as String).input(),
      credentials: map['credentials'] == null ? null : (CustomKeys.fromMap((map['credentials'] as Map).cast<String, dynamic>())).input(),
      error: map['error'] == null ? null : (map['error'] as String).input(),
      expiryTime: map['expiryTime'] == null ? null : (map['expiryTime'] as String).input(),
      isSharedToAll: map['isSharedToAll'] == null ? null : (map['isSharedToAll'] as bool).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
      peRequirement: map['peRequirement'] == null ? null : (map['peRequirement'] as String).input(),
      peStatus: map['peStatus'] == null ? null : (map['peStatus'] as String).input(),
      sharedUserList: map['sharedUserList'] == null ? null : ((map['sharedUserList'] as List).cast<String>()).input(),
      target: map['target'] == null ? null : (map['target'] as String).input(),
      useWorkspaceManagedIdentity: map['useWorkspaceManagedIdentity'] == null ? null : (map['useWorkspaceManagedIdentity'] as bool).input(),
    );
  }
}

