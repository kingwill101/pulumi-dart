// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'shared_directory_target.dart';

/// {@template pulumi_directoryservice_shared_directory_shared_directory_args_doc}
/// The set of arguments for SharedDirectory.
/// {@endtemplate}
/// {@macro pulumi_directoryservice_shared_directory_shared_directory_args_doc}
class SharedDirectoryArgs {
  /// Identifier of the Managed Microsoft AD directory that you want to share with other accounts.
  final pulumi.Input<String> directoryId;

  /// Method used when sharing a directory. Valid values are `ORGANIZATIONS` and `HANDSHAKE`. Default is `HANDSHAKE`.
  final pulumi.Input<String>? method;

  /// Message sent by the directory owner to the directory consumer to help the directory consumer administrator determine whether to approve or reject the share invitation.
  final pulumi.Input<String>? notes;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Identifier for the directory consumer account with whom the directory is to be shared. See below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<SharedDirectoryTarget> target;

  /// Creates a new [SharedDirectoryArgs].
  /// [directoryId] Identifier of the Managed Microsoft AD directory that you want to share with other accounts.
  /// [method] Method used when sharing a directory. Valid values are `ORGANIZATIONS` and `HANDSHAKE`. Default is `HANDSHAKE`.
  /// [notes] Message sent by the directory owner to the directory consumer to help the directory consumer administrator determine whether to approve or reject the share invitation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [target] Identifier for the directory consumer account with whom the directory is to be shared. See below.
  SharedDirectoryArgs({
    required String directoryId,
    String? method,
    String? notes,
    String? region,
    required SharedDirectoryTarget target,
  })  : directoryId = pulumi.Input.asInput<String>(directoryId),
        method = pulumi.Input.asOptionalInput<String>(method),
        notes = pulumi.Input.asOptionalInput<String>(notes),
        region = pulumi.Input.asOptionalInput<String>(region),
        target = pulumi.Input.asInput<SharedDirectoryTarget>(target);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['directoryId'] = directoryId;
    final methodValue = method;
    if (methodValue != null) {
      map['method'] = methodValue;
    }
    final notesValue = notes;
    if (notesValue != null) {
      map['notes'] = notesValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['target'] =
        pulumi.Input.mapInputValue<SharedDirectoryTarget, Map<String, dynamic>>(
            target, (value) => value.toMap());
    return map;
  }

  factory SharedDirectoryArgs.fromMap(Map<String, dynamic> map) {
    return SharedDirectoryArgs(
      directoryId: map['directoryId'] as String,
      method: map['method'] == null ? null : map['method'] as String,
      notes: map['notes'] == null ? null : map['notes'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      target: SharedDirectoryTarget.fromMap(
          (map['target'] as Map).cast<String, dynamic>()),
    );
  }
}
