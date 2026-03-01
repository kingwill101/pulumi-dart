// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ens_get_key_pairs_get_key_pairs_args_doc}
/// Arguments for getKeyPairs.
/// {@endtemplate}
/// {@macro pulumi_ens_get_key_pairs_get_key_pairs_args_doc}
class GetKeyPairsArgs {
  /// The name of the key pair.
  final pulumi.Input<String>? keyPairName;
  /// A regex string to filter results by Key Pair name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The version number.
  final pulumi.Input<String> version;

  /// Creates a new [GetKeyPairsArgs].
  /// [keyPairName] The name of the key pair.
  /// [nameRegex] A regex string to filter results by Key Pair name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [version] The version number.
  GetKeyPairsArgs({
    String? keyPairName,
    String? nameRegex,
    String? outputFile,
    required String version,
  }) :
      keyPairName = pulumi.Input.asOptionalInput<String>(keyPairName),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      version = pulumi.Input.asInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyPairName': ?keyPairName,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'version': version,
    };
  }

  factory GetKeyPairsArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyPairsArgs(
      keyPairName: map['keyPairName'] == null ? null : map['keyPairName'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      version: map['version'] as String,
    );
  }
}

