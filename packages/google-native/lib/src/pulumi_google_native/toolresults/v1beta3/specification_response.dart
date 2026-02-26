// ignore_for_file: unused_element, unnecessary_cast

import 'android_test_response.dart';
import 'ios_test_response.dart';

/// The details about how to run the execution.
class SpecificationResponse {
  /// An Android mobile test execution specification.
  final AndroidTestResponse androidTest;

  /// An iOS mobile test execution specification.
  final IosTestResponse iosTest;

  SpecificationResponse({
    required this.androidTest,
    required this.iosTest,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['androidTest'] = androidTest.toMap();
    map['iosTest'] = iosTest.toMap();
    return map;
  }

  factory SpecificationResponse.fromMap(Map<String, dynamic> map) {
    return SpecificationResponse(
      androidTest: AndroidTestResponse.fromMap(
          (map['androidTest'] as Map).cast<String, dynamic>()),
      iosTest: IosTestResponse.fromMap(
          (map['iosTest'] as Map).cast<String, dynamic>()),
    );
  }
}
