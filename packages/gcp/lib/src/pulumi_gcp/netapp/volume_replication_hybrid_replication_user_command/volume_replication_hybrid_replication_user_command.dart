// ignore_for_file: unused_element, unnecessary_cast

class VolumeReplicationHybridReplicationUserCommand {
  /// (Output)
  /// List of commands to be executed by the customer.
  final List<String>? commands;

  VolumeReplicationHybridReplicationUserCommand({
    this.commands,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commandsValue = commands;
    if (commandsValue != null) {
      map['commands'] = commandsValue;
    }
    return map;
  }

  factory VolumeReplicationHybridReplicationUserCommand.fromMap(
      Map<String, dynamic> map) {
    return VolumeReplicationHybridReplicationUserCommand(
      commands: map['commands'] == null
          ? null
          : (map['commands'] as List).cast<String>(),
    );
  }
}
