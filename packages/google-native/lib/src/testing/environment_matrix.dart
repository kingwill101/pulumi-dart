// ignore_for_file: unused_element, unnecessary_cast

import 'android_device_list.dart';
import 'android_matrix.dart';
import 'ios_device_list.dart';

/// The matrix of environments in which the test is to be executed.
class EnvironmentMatrix {
  /// A list of Android devices; the test will be run only on the specified devices.
  final AndroidDeviceList? androidDeviceList;

  /// A matrix of Android devices.
  final AndroidMatrix? androidMatrix;

  /// A list of iOS devices.
  final IosDeviceList? iosDeviceList;

  /// Creates a new [EnvironmentMatrix].
  /// [androidDeviceList] A list of Android devices; the test will be run only on the specified devices.
  /// [androidMatrix] A matrix of Android devices.
  /// [iosDeviceList] A list of iOS devices.
  EnvironmentMatrix({
    this.androidDeviceList,
    this.androidMatrix,
    this.iosDeviceList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidDeviceList': ?androidDeviceList == null
          ? null
          : androidDeviceList!.toMap(),
      'androidMatrix': ?androidMatrix == null ? null : androidMatrix!.toMap(),
      'iosDeviceList': ?iosDeviceList == null ? null : iosDeviceList!.toMap(),
    };
  }

  factory EnvironmentMatrix.fromMap(Map<String, dynamic> map) {
    return EnvironmentMatrix(
      androidDeviceList: map['androidDeviceList'] == null
          ? null
          : AndroidDeviceList.fromMap(
              (map['androidDeviceList'] as Map).cast<String, dynamic>(),
            ),
      androidMatrix: map['androidMatrix'] == null
          ? null
          : AndroidMatrix.fromMap(
              (map['androidMatrix'] as Map).cast<String, dynamic>(),
            ),
      iosDeviceList: map['iosDeviceList'] == null
          ? null
          : IosDeviceList.fromMap(
              (map['iosDeviceList'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
