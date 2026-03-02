// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReposRepoDomainList {
  /// Domain of internal endpoint, only in some regions.
  final pulumi.Input<String> internal;
  /// Domain of public endpoint.
  final pulumi.Input<String> public;
  /// Domain of vpc endpoint.
  final pulumi.Input<String> vpc;

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
      internal: (map['internal'] as String).input(),
      public: (map['public'] as String).input(),
      vpc: (map['vpc'] as String).input(),
    );
  }
}

