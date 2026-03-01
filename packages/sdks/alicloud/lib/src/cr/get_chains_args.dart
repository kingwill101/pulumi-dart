// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cr_get_chains_get_chains_args_doc}
/// Arguments for getChains.
/// {@endtemplate}
/// {@macro pulumi_cr_get_chains_get_chains_args_doc}
class GetChainsArgs {
  final pulumi.Input<bool>? enableDetails;
  /// A list of Chain IDs.
  final pulumi.Input<List<String>>? ids;
  /// The ID of CR Enterprise Edition instance.
  final pulumi.Input<String> instanceId;
  /// A regex string to filter results by Chain name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The name of CR Enterprise Edition repository.
  final pulumi.Input<String>? repoName;
  /// The name of CR Enterprise Edition namespace.
  final pulumi.Input<String>? repoNamespaceName;

  /// Creates a new [GetChainsArgs].
  /// [enableDetails] Optional.
  /// [ids] A list of Chain IDs.
  /// [instanceId] The ID of CR Enterprise Edition instance.
  /// [nameRegex] A regex string to filter results by Chain name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [repoName] The name of CR Enterprise Edition repository.
  /// [repoNamespaceName] The name of CR Enterprise Edition namespace.
  GetChainsArgs({
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? repoName,
    pulumi.Output<String>? repoNamespaceName,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      repoName = pulumi.Input.asOptionalInput<String>(repoName),
      repoNamespaceName = pulumi.Input.asOptionalInput<String>(repoNamespaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'repoName': ?repoName,
      'repoNamespaceName': ?repoNamespaceName,
    };
  }

  factory GetChainsArgs.fromMap(Map<String, dynamic> map) {
    return GetChainsArgs(
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      repoName: map['repoName'] == null ? null : pulumi.Output.create<String>(map['repoName'] as String),
      repoNamespaceName: map['repoNamespaceName'] == null ? null : pulumi.Output.create<String>(map['repoNamespaceName'] as String),
    );
  }
}

