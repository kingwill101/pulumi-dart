// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vaults_vault.dart';

/// Result data returned by getVaults.
class GetVaultsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? status;
  final String? vaultType;
  final List<GetVaultsVault> vaults;

  /// Creates a new [GetVaultsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [status] Optional.
  /// [vaultType] Optional.
  /// [vaults] Required.
  GetVaultsResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
    this.vaultType,
    required this.vaults,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
      'vaultType': ?vaultType,
      'vaults': pulumi.Input.encodeList<GetVaultsVault, Map<String, dynamic>>(
        vaults,
        (value) => value.toMap(),
      ),
    };
  }

  factory GetVaultsResult.fromMap(Map<String, dynamic> map) {
    return GetVaultsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      vaultType: (() {
        final guardedValue = map['vaultType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      vaults: pulumi.Input.decodeList<GetVaultsVault>(
        map['vaults']!,
        (value) =>
            GetVaultsVault.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
