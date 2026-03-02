// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_get_change_data_capture_args_doc}
/// Arguments for getChangeDataCapture.
/// {@endtemplate}
/// {@macro pulumi_datafactory_get_change_data_capture_args_doc}
class GetChangeDataCaptureArgs {
  /// The change data capture name.
  final pulumi.Input<String> changeDataCaptureName;
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetChangeDataCaptureArgs].
  /// [changeDataCaptureName] The change data capture name.
  /// [factoryName] The factory name.
  /// [resourceGroupName] The resource group name.
  GetChangeDataCaptureArgs({
    required this.changeDataCaptureName,
    required this.factoryName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeDataCaptureName': changeDataCaptureName,
      'factoryName': factoryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetChangeDataCaptureArgs.fromMap(Map<String, dynamic> map) {
    return GetChangeDataCaptureArgs(
      changeDataCaptureName: (map['changeDataCaptureName'] as String).input(),
      factoryName: (map['factoryName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

