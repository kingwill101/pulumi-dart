// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../shared_directory_target/shared_directory_target.dart';

/// The set of arguments for SharedDirectory.
class SharedDirectoryArgs {
  /// Identifier of the Managed Microsoft AD directory that you want to share with other accounts.
  final Input<String> directoryId;

  /// Method used when sharing a directory. Valid values are `ORGANIZATIONS` and `HANDSHAKE`. Default is `HANDSHAKE`.
  final Input<String>? method;

  /// Message sent by the directory owner to the directory consumer to help the directory consumer administrator determine whether to approve or reject the share invitation.
  final Input<String>? notes;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Identifier for the directory consumer account with whom the directory is to be shared. See below.
  ///
  /// The following arguments are optional:
  final Input<SharedDirectoryTarget> target;

  SharedDirectoryArgs({
    required this.directoryId,
    this.method,
    this.notes,
    this.region,
    required this.target,
  });

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
        Input.mapInputValue<SharedDirectoryTarget, Map<String, dynamic>>(
            target, (value) => value.toMap());
    return map;
  }

  factory SharedDirectoryArgs.fromMap(Map<String, dynamic> map) {
    return SharedDirectoryArgs(
      directoryId: Input.asInput<String>(map['directoryId']),
      method: Input.asOptionalInput<String>(map['method']),
      notes: Input.asOptionalInput<String>(map['notes']),
      region: Input.asOptionalInput<String>(map['region']),
      target: Input.asInput<SharedDirectoryTarget>(map['target']),
    );
  }
}
