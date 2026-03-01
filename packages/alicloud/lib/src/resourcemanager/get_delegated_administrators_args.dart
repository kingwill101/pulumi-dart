// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_get_delegated_administrators_get_delegated_administrators_args_doc}
/// Arguments for getDelegatedAdministrators.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_get_delegated_administrators_get_delegated_administrators_args_doc}
class GetDelegatedAdministratorsArgs {
  /// A list of Delegated Administrator IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The identification of the trusted service.
  final pulumi.Input<String>? servicePrincipal;

  /// Creates a new [GetDelegatedAdministratorsArgs].
  /// [ids] A list of Delegated Administrator IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [servicePrincipal] The identification of the trusted service.
  GetDelegatedAdministratorsArgs({
    List<String>? ids,
    String? outputFile,
    int? pageNumber,
    int? pageSize,
    String? servicePrincipal,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      servicePrincipal = pulumi.Input.asOptionalInput<String>(servicePrincipal);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'servicePrincipal': ?servicePrincipal,
    };
  }

  factory GetDelegatedAdministratorsArgs.fromMap(Map<String, dynamic> map) {
    return GetDelegatedAdministratorsArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      servicePrincipal: map['servicePrincipal'] == null ? null : map['servicePrincipal'] as String,
    );
  }
}

