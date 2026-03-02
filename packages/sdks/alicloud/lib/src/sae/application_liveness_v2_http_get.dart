// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationLivenessV2HttpGet {
  final pulumi.Input<bool>? isContainKeyWord;
  final pulumi.Input<String>? keyWord;
  final pulumi.Input<String>? path;
  final pulumi.Input<int>? port;
  final pulumi.Input<String>? scheme;

  /// Creates a new [ApplicationLivenessV2HttpGet].
  /// [isContainKeyWord] Optional.
  /// [keyWord] Optional.
  /// [path] Optional.
  /// [port] Optional.
  /// [scheme] Optional.
  ApplicationLivenessV2HttpGet({
    this.isContainKeyWord,
    this.keyWord,
    this.path,
    this.port,
    this.scheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isContainKeyWord': ?isContainKeyWord,
      'keyWord': ?keyWord,
      'path': ?path,
      'port': ?port,
      'scheme': ?scheme,
    };
  }

  factory ApplicationLivenessV2HttpGet.fromMap(Map<String, dynamic> map) {
    return ApplicationLivenessV2HttpGet(
      isContainKeyWord: map['isContainKeyWord'] == null ? null : (map['isContainKeyWord']! as bool).input(),
      keyWord: map['keyWord'] == null ? null : (map['keyWord']! as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      scheme: map['scheme'] == null ? null : (map['scheme']! as String).input(),
    );
  }
}

