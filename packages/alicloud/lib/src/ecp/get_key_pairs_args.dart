// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecp_get_key_pairs_get_key_pairs_args_doc}
/// Arguments for getKeyPairs.
/// {@endtemplate}
/// {@macro pulumi_ecp_get_key_pairs_get_key_pairs_args_doc}
class GetKeyPairsArgs {
  /// A list of Key Pair IDs. Its element value is same as Key Pair Name.
  final pulumi.Input<List<String>>? ids;
  /// The Private Key of the Fingerprint.
  final pulumi.Input<String>? keyPairFingerPrint;
  /// A regex string to filter results by Key Pair name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetKeyPairsArgs].
  /// [ids] A list of Key Pair IDs. Its element value is same as Key Pair Name.
  /// [keyPairFingerPrint] The Private Key of the Fingerprint.
  /// [nameRegex] A regex string to filter results by Key Pair name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetKeyPairsArgs({
    List<String>? ids,
    String? keyPairFingerPrint,
    String? nameRegex,
    String? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      keyPairFingerPrint = pulumi.Input.asOptionalInput<String>(keyPairFingerPrint),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'keyPairFingerPrint': ?keyPairFingerPrint,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetKeyPairsArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyPairsArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      keyPairFingerPrint: map['keyPairFingerPrint'] == null ? null : map['keyPairFingerPrint'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

