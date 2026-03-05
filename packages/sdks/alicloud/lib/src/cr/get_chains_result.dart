// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_chains_chain.dart';

/// Result data returned by getChains.
class GetChainsResult {
  /// A list of Cr Chains. Each element contains the following attributes:
  final List<GetChainsChain> chains;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Chain IDs.
  final List<String> ids;
  /// The ID of CR Enterprise Edition instance.
  final String instanceId;
  final String? nameRegex;
  /// A list of Chain names.
  final List<String> names;
  final String? outputFile;
  final String? repoName;
  final String? repoNamespaceName;

  /// Creates a new [GetChainsResult].
  /// [chains] A list of Cr Chains. Each element contains the following attributes:
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Chain IDs.
  /// [instanceId] The ID of CR Enterprise Edition instance.
  /// [nameRegex] Optional.
  /// [names] A list of Chain names.
  /// [outputFile] Optional.
  /// [repoName] Optional.
  /// [repoNamespaceName] Optional.
  GetChainsResult({
    required this.chains,
    this.enableDetails,
    required this.id,
    required this.ids,
    required this.instanceId,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.repoName,
    this.repoNamespaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chains': pulumi.Input.encodeList<GetChainsChain, Map<String, dynamic>>(chains, (value) => value.toMap()),
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'repoName': ?repoName,
      'repoNamespaceName': ?repoNamespaceName,
    };
  }

  factory GetChainsResult.fromMap(Map<String, dynamic> map) {
    return GetChainsResult(
      chains: pulumi.Input.decodeList<GetChainsChain>(map['chains']!, (value) => GetChainsChain.fromMap((value as Map).cast<String, dynamic>())),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repoName: (() { final guardedValue = map['repoName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repoNamespaceName: (() { final guardedValue = map['repoNamespaceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

