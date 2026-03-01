// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ddos_get_ddos_coo_instances_get_ddos_coo_instances_args_doc}
/// Arguments for getDdosCooInstances.
/// {@endtemplate}
/// {@macro pulumi_ddos_get_ddos_coo_instances_get_ddos_coo_instances_args_doc}
class GetDdosCooInstancesArgs {
  /// A list of instance IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by the instance name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetDdosCooInstancesArgs].
  /// [ids] A list of instance IDs.
  /// [nameRegex] A regex string to filter results by the instance name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetDdosCooInstancesArgs({
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetDdosCooInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetDdosCooInstancesArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

