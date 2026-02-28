// ignore_for_file: unused_element, unnecessary_cast


class RemoteImageBuildUlimit {
  /// soft limit
  final int hard;
  /// type of ulimit, e.g. `nofile`
  final String name;
  /// hard limit
  final int soft;

  /// Creates a new [RemoteImageBuildUlimit].
  /// [hard] soft limit
  /// [name] type of ulimit, e.g. `nofile`
  /// [soft] hard limit
  RemoteImageBuildUlimit({
    required this.hard,
    required this.name,
    required this.soft,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hard': hard,
      'name': name,
      'soft': soft,
    };
  }

  factory RemoteImageBuildUlimit.fromMap(Map<String, dynamic> map) {
    return RemoteImageBuildUlimit(
      hard: map['hard'] as int,
      name: map['name'] as String,
      soft: map['soft'] as int,
    );
  }
}

