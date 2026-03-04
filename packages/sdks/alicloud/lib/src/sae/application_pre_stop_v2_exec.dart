// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationPreStopV2Exec {
  /// Mirror start command. The command must be an executable object in the container. For example: sleep. Setting this command will cause the original startup command of the mirror to become invalid.
  final pulumi.Input<List<String>>? commands;

  /// Creates a new [ApplicationPreStopV2Exec].
  /// [commands] Mirror start command. The command must be an executable object in the container. For example: sleep. Setting this command will cause the original startup command of the mirror to become invalid.
  ApplicationPreStopV2Exec({this.commands});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'commands': ?commands};
  }

  factory ApplicationPreStopV2Exec.fromMap(Map<String, dynamic> map) {
    return ApplicationPreStopV2Exec(
      commands: (() {
        final guardedValue = map['commands'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
