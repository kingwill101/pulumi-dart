// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cfg_get_configuration_recorders_get_configuration_recorders_args_doc}
/// Arguments for getConfigurationRecorders.
/// {@endtemplate}
/// {@macro pulumi_cfg_get_configuration_recorders_get_configuration_recorders_args_doc}
class GetConfigurationRecordersArgs {
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetConfigurationRecordersArgs].
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetConfigurationRecordersArgs({this.outputFile});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'outputFile': ?outputFile};
  }

  factory GetConfigurationRecordersArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationRecordersArgs(
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
