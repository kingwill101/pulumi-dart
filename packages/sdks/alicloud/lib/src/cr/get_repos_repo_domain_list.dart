// ignore_for_file: unused_element, unnecessary_cast


class GetReposRepoDomainList {
  /// Domain of internal endpoint, only in some regions.
  final String internal;
  /// Domain of public endpoint.
  final String public;
  /// Domain of vpc endpoint.
  final String vpc;

  /// Creates a new [GetReposRepoDomainList].
  /// [internal] Domain of internal endpoint, only in some regions.
  /// [public] Domain of public endpoint.
  /// [vpc] Domain of vpc endpoint.
  GetReposRepoDomainList({
    required this.internal,
    required this.public,
    required this.vpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internal': internal,
      'public': public,
      'vpc': vpc,
    };
  }

  factory GetReposRepoDomainList.fromMap(Map<String, dynamic> map) {
    return GetReposRepoDomainList(
      internal: map['internal'] as String,
      public: map['public'] as String,
      vpc: map['vpc'] as String,
    );
  }
}

