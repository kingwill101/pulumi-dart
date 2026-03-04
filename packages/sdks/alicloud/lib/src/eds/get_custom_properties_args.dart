// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eds_get_custom_properties_get_custom_properties_args_doc}
/// Arguments for getCustomProperties.
/// {@endtemplate}
/// {@macro pulumi_eds_get_custom_properties_get_custom_properties_args_doc}
class GetCustomPropertiesArgs {
  /// A list of Custom Property IDs.
  final pulumi.Input<List<String>>? ids;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetCustomPropertiesArgs].
  /// [ids] A list of Custom Property IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetCustomPropertiesArgs({this.ids, this.outputFile});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ids': ?ids, 'outputFile': ?outputFile};
  }

  factory GetCustomPropertiesArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomPropertiesArgs(
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
