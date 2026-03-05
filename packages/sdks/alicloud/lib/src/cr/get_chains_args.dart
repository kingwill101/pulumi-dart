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
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repoName: (() { final guardedValue = map['repoName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repoNamespaceName: (() { final guardedValue = map['repoNamespaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

