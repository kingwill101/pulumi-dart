// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SharedDirectoryAccepter resources.
class SharedDirectoryAccepterState {
  /// Method used when sharing a directory (i.e., `ORGANIZATIONS` or `HANDSHAKE`).
  final pulumi.Input<String>? method;

  /// Message sent by the directory owner to the directory consumer to help the directory consumer administrator determine whether to approve or reject the share invitation.
  final pulumi.Input<String>? notes;

  /// Account identifier of the directory owner.
  final pulumi.Input<String>? ownerAccountId;

  /// Identifier of the Managed Microsoft AD directory from the perspective of the directory owner.
  final pulumi.Input<String>? ownerDirectoryId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Identifier of the directory that is stored in the directory consumer account that corresponds to the shared directory in the owner account.
  final pulumi.Input<String>? sharedDirectoryId;

  /// Creates a new [SharedDirectoryAccepterState].
  /// [method] Method used when sharing a directory (i.e., `ORGANIZATIONS` or `HANDSHAKE`).
  /// [notes] Message sent by the directory owner to the directory consumer to help the directory consumer administrator determine whether to approve or reject the share invitation.
  /// [ownerAccountId] Account identifier of the directory owner.
  /// [ownerDirectoryId] Identifier of the Managed Microsoft AD directory from the perspective of the directory owner.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sharedDirectoryId] Identifier of the directory that is stored in the directory consumer account that corresponds to the shared directory in the owner account.
  SharedDirectoryAccepterState({
    this.method,
    this.notes,
    this.ownerAccountId,
    this.ownerDirectoryId,
    this.region,
    this.sharedDirectoryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': ?method,
      'notes': ?notes,
      'ownerAccountId': ?ownerAccountId,
      'ownerDirectoryId': ?ownerDirectoryId,
      'region': ?region,
      'sharedDirectoryId': ?sharedDirectoryId,
    };
  }

  factory SharedDirectoryAccepterState.fromMap(Map<String, dynamic> map) {
    return SharedDirectoryAccepterState(
      method: (() {
        final guardedValue = map['method'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      notes: (() {
        final guardedValue = map['notes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ownerAccountId: (() {
        final guardedValue = map['ownerAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ownerDirectoryId: (() {
        final guardedValue = map['ownerDirectoryId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sharedDirectoryId: (() {
        final guardedValue = map['sharedDirectoryId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
