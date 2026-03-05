// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_activations_activation.dart';

/// Result data returned by getActivations.
class GetActivationsResult {
  final List<GetActivationsActivation> activations;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? instanceName;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  final int totalCount;

  /// Creates a new [GetActivationsResult].
  /// [activations] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceName] Optional.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [totalCount] Required.
  GetActivationsResult({
    required this.activations,
    required this.id,
    required this.ids,
    this.instanceName,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    required this.totalCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activations': pulumi.Input.encodeList<GetActivationsActivation, Map<String, dynamic>>(activations, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'instanceName': ?instanceName,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'totalCount': totalCount,
    };
  }

  factory GetActivationsResult.fromMap(Map<String, dynamic> map) {
    return GetActivationsResult(
      activations: pulumi.Input.decodeList<GetActivationsActivation>(map['activations']!, (value) => GetActivationsActivation.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceName: (() { final guardedValue = map['instanceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
      totalCount: map['totalCount'] as int,
    );
  }
}

