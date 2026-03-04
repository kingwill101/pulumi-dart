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
    this.ids,
    this.keyPairFingerPrint,
    this.nameRegex,
    this.outputFile,
  });

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
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      keyPairFingerPrint: (() {
        final guardedValue = map['keyPairFingerPrint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
