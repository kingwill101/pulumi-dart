// ignore_for_file: unused_element, unnecessary_cast

/// Command describes a step performed as part of the build pipeline.
class Command2 {
  /// Command-line arguments used when executing this Command.
  final List<String>? args;

  /// Working directory (relative to project source root) used when running this Command.
  final String? dir;

  /// Environment variables set before running this Command.
  final List<String>? env;

  /// Optional unique identifier for this Command, used in wait_for to reference this Command as a dependency.
  final String? id;

  /// Name of the command, as presented on the command line, or if the command is packaged as a Docker container, as presented to `docker pull`.
  final String? name;

  /// The ID(s) of the Command(s) that this Command depends on.
  final List<String>? waitFor;

  Command2({
    this.args,
    this.dir,
    this.env,
    this.id,
    this.name,
    this.waitFor,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final argsValue = args;
    if (argsValue != null) {
      map['args'] = argsValue;
    }
    final dirValue = dir;
    if (dirValue != null) {
      map['dir'] = dirValue;
    }
    final envValue = env;
    if (envValue != null) {
      map['env'] = envValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final waitForValue = waitFor;
    if (waitForValue != null) {
      map['waitFor'] = waitForValue;
    }
    return map;
  }

  factory Command2.fromMap(Map<String, dynamic> map) {
    return Command2(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      dir: map['dir'] == null ? null : map['dir'] as String,
      env: map['env'] == null ? null : (map['env'] as List).cast<String>(),
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      waitFor: map['waitFor'] == null
          ? null
          : (map['waitFor'] as List).cast<String>(),
    );
  }
}
