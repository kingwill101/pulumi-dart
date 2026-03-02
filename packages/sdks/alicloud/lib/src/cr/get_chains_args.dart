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
    this.enableDetails,
    this.ids,
    required this.instanceId,
    this.nameRegex,
    this.outputFile,
    this.repoName,
    this.repoNamespaceName,
  });

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
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      instanceId: (map['instanceId'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      repoName: map['repoName'] == null ? null : (map['repoName'] as String).input(),
      repoNamespaceName: map['repoNamespaceName'] == null ? null : (map['repoNamespaceName'] as String).input(),
    );
  }
}

