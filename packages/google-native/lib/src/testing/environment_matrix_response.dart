// ignore_for_file: unused_element, unnecessary_cast

import 'android_device_list_response.dart';
import 'android_matrix_response.dart';
import 'ios_device_list_response.dart';

/// The matrix of environments in which the test is to be executed.
class EnvironmentMatrixResponse {
  /// A list of Android devices; the test will be run only on the specified devices.
  final AndroidDeviceListResponse androidDeviceList;

  /// A matrix of Android devices.
  final AndroidMatrixResponse androidMatrix;

  /// A list of iOS devices.
  final IosDeviceListResponse iosDeviceList;

  /// Creates a new [EnvironmentMatrixResponse].
  /// [androidDeviceList] A list of Android devices; the test will be run only on the specified devices.
  /// [androidMatrix] A matrix of Android devices.
  /// [iosDeviceList] A list of iOS devices.
  EnvironmentMatrixResponse({
    required this.androidDeviceList,
    required this.androidMatrix,
    required this.iosDeviceList,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['androidDeviceList'] = androidDeviceList.toMap();
    map['androidMatrix'] = androidMatrix.toMap();
    map['iosDeviceList'] = iosDeviceList.toMap();
    return map;
  }

  factory EnvironmentMatrixResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentMatrixResponse(
      androidDeviceList: AndroidDeviceListResponse.fromMap(
          (map['androidDeviceList'] as Map).cast<String, dynamic>()),
      androidMatrix: AndroidMatrixResponse.fromMap(
          (map['androidMatrix'] as Map).cast<String, dynamic>()),
      iosDeviceList: IosDeviceListResponse.fromMap(
          (map['iosDeviceList'] as Map).cast<String, dynamic>()),
    );
  }
}
