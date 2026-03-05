// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_grant_rule_to_cens_cen.dart';

/// Result data returned by getGrantRuleToCens.
class GetGrantRuleToCensResult {
  /// A list of Express Connect Grant Rule To Cens. Each element contains the following attributes:
  final List<GetGrantRuleToCensCen> cens;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String instanceId;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;

  /// Creates a new [GetGrantRuleToCensResult].
  /// [cens] A list of Express Connect Grant Rule To Cens. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] Required.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetGrantRuleToCensResult({
    required this.cens,
    required this.id,
    required this.ids,
    required this.instanceId,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cens': pulumi.Input.encodeList<GetGrantRuleToCensCen, Map<String, dynamic>>(cens, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetGrantRuleToCensResult.fromMap(Map<String, dynamic> map) {
    return GetGrantRuleToCensResult(
      cens: pulumi.Input.decodeList<GetGrantRuleToCensCen>(map['cens']!, (value) => GetGrantRuleToCensCen.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
    );
  }
}

