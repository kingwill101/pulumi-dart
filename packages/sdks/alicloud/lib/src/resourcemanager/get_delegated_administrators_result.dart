// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_delegated_administrators_administrator.dart';

/// Result data returned by getDelegatedAdministrators.
class GetDelegatedAdministratorsResult {
  final List<GetDelegatedAdministratorsAdministrator> administrators;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  final String? servicePrincipal;

  /// Creates a new [GetDelegatedAdministratorsResult].
  /// [administrators] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [servicePrincipal] Optional.
  GetDelegatedAdministratorsResult({
    required this.administrators,
    required this.id,
    required this.ids,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.servicePrincipal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrators': pulumi.Input.encodeList<GetDelegatedAdministratorsAdministrator, Map<String, dynamic>>(administrators, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'servicePrincipal': ?servicePrincipal,
    };
  }

  factory GetDelegatedAdministratorsResult.fromMap(Map<String, dynamic> map) {
    return GetDelegatedAdministratorsResult(
      administrators: pulumi.Input.decodeList<GetDelegatedAdministratorsAdministrator>(map['administrators']!, (value) => GetDelegatedAdministratorsAdministrator.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
      servicePrincipal: (() { final guardedValue = map['servicePrincipal']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

