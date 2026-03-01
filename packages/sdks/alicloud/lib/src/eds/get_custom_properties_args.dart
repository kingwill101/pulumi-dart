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
  GetCustomPropertiesArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
    };
  }

  factory GetCustomPropertiesArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomPropertiesArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

