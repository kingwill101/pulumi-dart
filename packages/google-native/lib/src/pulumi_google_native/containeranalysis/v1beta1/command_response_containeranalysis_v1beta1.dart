// ignore_for_file: unused_element, unnecessary_cast

/// Command describes a step performed as part of the build pipeline.
class CommandResponseContaineranalysisV1beta1 {
  /// Command-line arguments used when executing this command.
  final List<String> args;

  /// Working directory (relative to project source root) used when running this command.
  final String dir;

  /// Environment variables set before running this command.
  final List<String> env;

  /// Name of the command, as presented on the command line, or if the command is packaged as a Docker container, as presented to `docker pull`.
  final String name;

  /// The ID(s) of the command(s) that this command depends on.
  final List<String> waitFor;

  CommandResponseContaineranalysisV1beta1({
    required this.args,
    required this.dir,
    required this.env,
    required this.name,
    required this.waitFor,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['args'] = args;
    map['dir'] = dir;
    map['env'] = env;
    map['name'] = name;
    map['waitFor'] = waitFor;
    return map;
  }

  factory CommandResponseContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return CommandResponseContaineranalysisV1beta1(
      args: (map['args'] as List).cast<String>(),
      dir: map['dir'] as String,
      env: (map['env'] as List).cast<String>(),
      name: map['name'] as String,
      waitFor: (map['waitFor'] as List).cast<String>(),
    );
  }
}
