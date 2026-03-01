// ignore_for_file: unused_element, unnecessary_cast

import 'android_test.dart';
import 'ios_test.dart';

/// The details about how to run the execution.
class Specification {
  /// An Android mobile test execution specification.
  final AndroidTest? androidTest;

  /// An iOS mobile test execution specification.
  final IosTest? iosTest;

  /// Creates a new [Specification].
  /// [androidTest] An Android mobile test execution specification.
  /// [iosTest] An iOS mobile test execution specification.
  Specification({this.androidTest, this.iosTest});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidTest': ?androidTest == null ? null : androidTest!.toMap(),
      'iosTest': ?iosTest == null ? null : iosTest!.toMap(),
    };
  }

  factory Specification.fromMap(Map<String, dynamic> map) {
    return Specification(
      androidTest: map['androidTest'] == null
          ? null
          : AndroidTest.fromMap(
              (map['androidTest'] as Map).cast<String, dynamic>(),
            ),
      iosTest: map['iosTest'] == null
          ? null
          : IosTest.fromMap((map['iosTest'] as Map).cast<String, dynamic>()),
    );
  }
}
