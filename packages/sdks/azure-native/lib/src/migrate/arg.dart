// ignore_for_file: unused_element, unnecessary_cast


/// ARG query and other details to create workloads within a wave.
class Arg {
  /// The query to create workloads within the wave.
  final String query;

  /// Creates a new [Arg].
  /// [query] The query to create workloads within the wave.
  Arg({
    required this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'query': query,
    };
  }

  factory Arg.fromMap(Map<String, dynamic> map) {
    return Arg(
      query: map['query'] as String,
    );
  }
}

