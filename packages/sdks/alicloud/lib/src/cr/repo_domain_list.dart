// ignore_for_file: unused_element, unnecessary_cast


class RepoDomainList {
  /// Domain of internal endpoint, only in some regions.
  final String? internal;
  /// Domain of public endpoint.
  final String? public;
  /// Domain of vpc endpoint.
  final String? vpc;

  /// Creates a new [RepoDomainList].
  /// [internal] Domain of internal endpoint, only in some regions.
  /// [public] Domain of public endpoint.
  /// [vpc] Domain of vpc endpoint.
  RepoDomainList({
    this.internal,
    this.public,
    this.vpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internal': ?internal,
      'public': ?public,
      'vpc': ?vpc,
    };
  }

  factory RepoDomainList.fromMap(Map<String, dynamic> map) {
    return RepoDomainList(
      internal: map['internal'] == null ? null : map['internal'] as String,
      public: map['public'] == null ? null : map['public'] as String,
      vpc: map['vpc'] == null ? null : map['vpc'] as String,
    );
  }
}

