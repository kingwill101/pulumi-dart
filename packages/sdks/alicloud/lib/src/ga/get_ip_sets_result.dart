// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ip_sets_set.dart';

/// Result data returned by getIpSets.
class GetIpSetsResult {
  final String acceleratorId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  /// A list of Ga Ip Sets. Each element contains the following attributes:
  final List<GetIpSetsSet> sets;
  /// The status of the acceleration region.
  final String? status;

  /// Creates a new [GetIpSetsResult].
  /// [acceleratorId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [sets] A list of Ga Ip Sets. Each element contains the following attributes:
  /// [status] The status of the acceleration region.
  const GetIpSetsResult({
    required this.acceleratorId,
    required this.id,
    required this.ids,
    this.outputFile,
    required this.sets,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'sets': pulumi.Input.encodeList<GetIpSetsSet, Map<String, dynamic>>(sets, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory GetIpSetsResult.fromMap(Map<String, dynamic> map) {
    return GetIpSetsResult(
      acceleratorId: map['acceleratorId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sets: pulumi.Input.decodeList<GetIpSetsSet>(map['sets']!, (value) => GetIpSetsSet.fromMap((value as Map).cast<String, dynamic>())),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

