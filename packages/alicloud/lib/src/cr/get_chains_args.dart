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
    bool? enableDetails,
    List<String>? ids,
    required String instanceId,
    String? nameRegex,
    String? outputFile,
    String? repoName,
    String? repoNamespaceName,
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
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      repoName: map['repoName'] == null ? null : map['repoName'] as String,
      repoNamespaceName: map['repoNamespaceName'] == null ? null : map['repoNamespaceName'] as String,
    );
  }
}

