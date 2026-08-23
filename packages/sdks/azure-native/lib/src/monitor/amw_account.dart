// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents an Azure Monitor Workspace (AMW) account used for emitting metrics.
class AmwAccount {
  /// The ARM resource ID of the managed identity with access to the source account.
  final pulumi.Input<String> identity;
  /// The ARM resource ID of the account where metrics are emitted.
  final pulumi.Input<String> resourceId;

  /// Creates a new [AmwAccount].
  /// [identity] The ARM resource ID of the managed identity with access to the source account.
  /// [resourceId] The ARM resource ID of the account where metrics are emitted.
  const AmwAccount({
    required this.identity,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': identity,
      'resourceId': resourceId,
    };
  }

  factory AmwAccount.fromMap(Map<String, dynamic> map) {
    return AmwAccount(
      identity: pulumi.Input.fromValue(map['identity'] as String),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}
