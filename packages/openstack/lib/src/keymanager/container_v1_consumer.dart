// ignore_for_file: unused_element, unnecessary_cast


class ContainerV1Consumer {
  /// Human-readable name for the Container. Does not have
  /// to be unique.
  final String? name;
  /// The consumer URL.
  final String? url;

  /// Creates a new [ContainerV1Consumer].
  /// [name] Human-readable name for the Container. Does not have
  /// [url] The consumer URL.
  ContainerV1Consumer({
    this.name,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'url': ?url,
    };
  }

  factory ContainerV1Consumer.fromMap(Map<String, dynamic> map) {
    return ContainerV1Consumer(
      name: map['name'] == null ? null : map['name'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

