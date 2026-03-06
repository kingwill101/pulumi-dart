// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_compliance_packs_pack.dart';

/// Result data returned by getCompliancePacks.
class GetCompliancePacksResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Compliance Pack names.
  final List<String> names;
  final String? outputFile;
  /// A list of Config Compliance Packs. Each element contains the following attributes:
  final List<GetCompliancePacksPack> packs;
  /// The status of the resource.
  final String? status;

  /// Creates a new [GetCompliancePacksResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Compliance Pack names.
  /// [outputFile] Optional.
  /// [packs] A list of Config Compliance Packs. Each element contains the following attributes:
  /// [status] The status of the resource.
  const GetCompliancePacksResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.packs,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'packs': pulumi.Input.encodeList<GetCompliancePacksPack, Map<String, dynamic>>(packs, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory GetCompliancePacksResult.fromMap(Map<String, dynamic> map) {
    return GetCompliancePacksResult(
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      packs: pulumi.Input.decodeList<GetCompliancePacksPack>(map['packs']!, (value) => GetCompliancePacksPack.fromMap((value as Map).cast<String, dynamic>())),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

