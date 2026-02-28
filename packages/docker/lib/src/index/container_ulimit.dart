// ignore_for_file: unused_element, unnecessary_cast


class ContainerUlimit {
  /// The hard limit
  final int hard;
  /// The name of the ulimit
  final String name;
  /// The soft limit
  final int soft;

  /// Creates a new [ContainerUlimit].
  /// [hard] The hard limit
  /// [name] The name of the ulimit
  /// [soft] The soft limit
  ContainerUlimit({
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

  factory ContainerUlimit.fromMap(Map<String, dynamic> map) {
    return ContainerUlimit(
      hard: map['hard'] as int,
      name: map['name'] as String,
      soft: map['soft'] as int,
    );
  }
}

