// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cs_get_registry_enterprise_instances_get_registry_enterprise_instances_args_doc}
/// Arguments for getRegistryEnterpriseInstances.
/// {@endtemplate}
/// {@macro pulumi_cs_get_registry_enterprise_instances_get_registry_enterprise_instances_args_doc}
class GetRegistryEnterpriseInstancesArgs {
  /// Default to `true`. Set it to true can output instance authorization token.
  final pulumi.Input<bool>? enableDetails;
  /// A list of ids to filter results by instance id.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by instance name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetRegistryEnterpriseInstancesArgs].
  /// [enableDetails] Default to `true`. Set it to true can output instance authorization token.
  /// [ids] A list of ids to filter results by instance id.
  /// [nameRegex] A regex string to filter results by instance name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetRegistryEnterpriseInstancesArgs({
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetRegistryEnterpriseInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryEnterpriseInstancesArgs(
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

