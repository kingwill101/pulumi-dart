// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'shared_directory_target.dart';

/// Input properties used for looking up and filtering SharedDirectory resources.
class SharedDirectoryState {
  /// Identifier of the Managed Microsoft AD directory that you want to share with other accounts.
  final pulumi.Input<String>? directoryId;
  /// Method used when sharing a directory. Valid values are `ORGANIZATIONS` and `HANDSHAKE`. Default is `HANDSHAKE`.
  final pulumi.Input<String>? method;
  /// Message sent by the directory owner to the directory consumer to help the directory consumer administrator determine whether to approve or reject the share invitation.
  final pulumi.Input<String>? notes;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Identifier of the directory that is stored in the directory consumer account that corresponds to the shared directory in the owner account.
  final pulumi.Input<String>? sharedDirectoryId;
  /// Identifier for the directory consumer account with whom the directory is to be shared. See below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<SharedDirectoryTarget>? target;

  /// Creates a new [SharedDirectoryState].
  /// [directoryId] Identifier of the Managed Microsoft AD directory that you want to share with other accounts.
  /// [method] Method used when sharing a directory. Valid values are `ORGANIZATIONS` and `HANDSHAKE`. Default is `HANDSHAKE`.
  /// [notes] Message sent by the directory owner to the directory consumer to help the directory consumer administrator determine whether to approve or reject the share invitation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sharedDirectoryId] Identifier of the directory that is stored in the directory consumer account that corresponds to the shared directory in the owner account.
  /// [target] Identifier for the directory consumer account with whom the directory is to be shared. See below.
  SharedDirectoryState({
    this.directoryId,
    this.method,
    this.notes,
    this.region,
    this.sharedDirectoryId,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryId': ?directoryId,
      'method': ?method,
      'notes': ?notes,
      'region': ?region,
      'sharedDirectoryId': ?sharedDirectoryId,
      'target': ?pulumi.Input.mapOptionalInputValue<SharedDirectoryTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory SharedDirectoryState.fromMap(Map<String, dynamic> map) {
    return SharedDirectoryState(
      directoryId: map['directoryId'] == null ? null : (map['directoryId'] as String).input(),
      method: map['method'] == null ? null : (map['method'] as String).input(),
      notes: map['notes'] == null ? null : (map['notes'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      sharedDirectoryId: map['sharedDirectoryId'] == null ? null : (map['sharedDirectoryId'] as String).input(),
      target: map['target'] == null ? null : (SharedDirectoryTarget.fromMap((map['target'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

