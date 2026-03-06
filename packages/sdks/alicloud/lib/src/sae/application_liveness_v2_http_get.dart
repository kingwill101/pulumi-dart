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
  const ApplicationLivenessV2HttpGet({
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
      isContainKeyWord: (() { final guardedValue = map['isContainKeyWord']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyWord: (() { final guardedValue = map['keyWord']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      scheme: (() { final guardedValue = map['scheme']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

