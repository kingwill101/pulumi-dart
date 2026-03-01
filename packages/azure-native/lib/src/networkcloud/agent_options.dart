// ignore_for_file: unused_element, unnecessary_cast


class AgentOptions {
  /// The number of hugepages to allocate.
  final double hugepagesCount;
  /// The size of the hugepages to allocate.
  final String? hugepagesSize;

  /// Creates a new [AgentOptions].
  /// [hugepagesCount] The number of hugepages to allocate.
  /// [hugepagesSize] The size of the hugepages to allocate.
  AgentOptions({
    required this.hugepagesCount,
    this.hugepagesSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hugepagesCount': hugepagesCount,
      'hugepagesSize': ?hugepagesSize,
    };
  }

  factory AgentOptions.fromMap(Map<String, dynamic> map) {
    return AgentOptions(
      hugepagesCount: map['hugepagesCount'] as double,
      hugepagesSize: map['hugepagesSize'] == null ? null : map['hugepagesSize'] as String,
    );
  }
}

